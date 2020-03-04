module WaitForAjax

  def wait_for_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests? && document_state?
    end
  end

  def finished_all_ajax_requests?
    @driver.evaluate_script('jQuery.active').zero?
  end

  def document_state?
    @driver.evaluate_script("document.readyState === 'complete'")
  end

end
