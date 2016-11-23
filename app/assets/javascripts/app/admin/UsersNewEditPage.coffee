{ Form, Input, Button,Select } = antd

FormItem = Form.Item
Option = Select.Option

Page = React.createClass
  render: ->
    { getFieldDecorator } = @props.form
    formItemLayout = {
      labelCol: { span: 8 },
      wrapperCol: { span: 14 },
    }
    <div className='member-new-page'>
      <div className='member-form'>
        <Form onSubmit={@submit}>
          <FormItem 
            {...formItemLayout}
            label="用户名"
          >
          {getFieldDecorator('member[name]', {initialValue: @props.user_data.name})(
            <Input className="form-input" placeholder="输入用户名" />
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="邮箱"
          >
          {getFieldDecorator('user[email]',{initialValue: @props.user_data.email})(
            <Input className="form-input" placeholder="输入邮箱" />
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="工号"
          >
          {getFieldDecorator('member[job_number]',{initialValue: @props.user_data.job_number})(
            <Input className="form-input" placeholder="输入工号" />
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="所属机构"
          >
          {getFieldDecorator('member[organization_node_ids]')(
            <Select
              multiple
              placeholder="请选择所属机构"
              className="form-input"
            >
              {
                for i in [0..@props.organization_nodes.length - 1]
                  <Option key={@props.organization_nodes[i].id}>{@props.organization_nodes[i].name}</Option>
              }
            </Select>
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="密码"
          >
          {getFieldDecorator('user[password]')(
            <Input className="form-input" placeholder="输入密码" />
          )}
          </FormItem>

          <FormItem>
            <Button type="primary" htmlType="submit" className="form-button">
              <FaIcon type='check' /> 确定
            </Button>
            <Button type="primary" htmlType="submit" className="form-button">
              <FaIcon type='close' href="/members"/> 取消
            </Button>
          </FormItem>

        </Form>
      </div>
    </div>

  submit: (evt)->
    evt.preventDefault()
    data = @props.form.getFieldsValue()
    if @props.user_data.name == null
      method = 'POST'
    else
      method = 'PUT'
    jQuery.ajax
      type: method
      url: @props.submit_url
      data: data

module.exports = MembersNewPage = Form.create()(Page)