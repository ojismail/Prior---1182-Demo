class ChatsController < ApplicationController
  before_action :authenticate_user!


  def index
    @chats = current_user.chats.order(created_at: :desc)
    @chat = Chat.new
  end

  def create
    sender_type = current_user.doctor? ? 'doctor' : 'patient'
    @chat = current_user.chats.build(chat_params)

    if @chat.save
      gpt_response = send_gpt_request(@chat.content)
      current_user.chats.create(content: gpt_response, sender_type: 'ChatGPT')
    end

    redirect_to chats_path
  end

  def clear
    current_user.chats.destroy_all
    redirect_to chats_path
  end


  private

  def chat_params
    params.require(:chat).permit(:content)
  end

  def send_gpt_request(message)
    initial_prompt = "Pretend you are an advanced medical AI trained to provide helpful medical information. "\
                     "Please provide a helpful response to the following message from a patient: "
    combined_message = initial_prompt + message

    client = OpenAI::Client.new
    response = client.completions(
      parameters: {
        model: "text-davinci-003",
        prompt: combined_message,
        max_tokens: 400
      }
    )

    # Extract the response content
    response['choices'][0]['text'].strip
  end
end
