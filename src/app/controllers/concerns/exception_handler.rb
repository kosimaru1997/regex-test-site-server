module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError, with: :handle_500_error
  end

  private

  def handle_500_error(e)
    logger.error e
    logger.error e.backtrace.join("\n")
    render_error(500, '予期しないエラーが発生しました')
  end

  def render_error(code, message)
    response = {
      code:,
      message:
    }

    render json: response, status: code
  end

end
