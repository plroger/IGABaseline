require 'test_helper'

class IgaBaselinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iga_baseline = iga_baselines(:one)
  end

  test "should get index" do
    get iga_baselines_url
    assert_response :success
  end

  test "should get new" do
    get new_iga_baseline_url
    assert_response :success
  end

  test "should create iga_baseline" do
    assert_difference('IgaBaseline.count') do
      post iga_baselines_url, params: { iga_baseline: { broker: @iga_baseline.broker, comment: @iga_baseline.comment, ip: @iga_baseline.ip, os: @iga_baseline.os, qmgr: @iga_baseline.qmgr, server_name: @iga_baseline.server_name, version_broker: @iga_baseline.version_broker, version_mq: @iga_baseline.version_mq, version_os: @iga_baseline.version_os } }
    end

    assert_redirected_to iga_baseline_url(IgaBaseline.last)
  end

  test "should show iga_baseline" do
    get iga_baseline_url(@iga_baseline)
    assert_response :success
  end

  test "should get edit" do
    get edit_iga_baseline_url(@iga_baseline)
    assert_response :success
  end

  test "should update iga_baseline" do
    patch iga_baseline_url(@iga_baseline), params: { iga_baseline: { broker: @iga_baseline.broker, comment: @iga_baseline.comment, ip: @iga_baseline.ip, os: @iga_baseline.os, qmgr: @iga_baseline.qmgr, server_name: @iga_baseline.server_name, version_broker: @iga_baseline.version_broker, version_mq: @iga_baseline.version_mq, version_os: @iga_baseline.version_os } }
    assert_redirected_to iga_baseline_url(@iga_baseline)
  end

  test "should destroy iga_baseline" do
    assert_difference('IgaBaseline.count', -1) do
      delete iga_baseline_url(@iga_baseline)
    end

    assert_redirected_to iga_baselines_url
  end
end
