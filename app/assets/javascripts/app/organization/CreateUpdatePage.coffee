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
    <div className='user-new-page'>
      <div className='user-form'>
        <Form onSubmit={@submit}>
          <FormItem 
            {...formItemLayout}
            label="机构名"
          >
          {getFieldDecorator('OrganizationNode[name]', {initialValue: @props.organization.name})(
            <Input className="form-input" placeholder="输入机构名" />
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="机构编号"
          >
          {getFieldDecorator('OrganizationNode[code]', {initialValue: @props.organization.code})(
            <Input className="form-input" placeholder="输入机构编号" />
          )}
          </FormItem>

          <FormItem 
            {...formItemLayout}
            label="所属机构"
          >
          {getFieldDecorator('OrganizationNode[parent_id]')(
            <Select
              placeholder="请选择所属机构"
              className="form-input"
            >
              {
                for i in @props.organization_nodes
                  <Option key={i.id}>{i.name}</Option>
              }
            </Select>
          )}
          </FormItem>

          <FormItem>
            <Button type="primary" htmlType="submit" className="form-button">
              <FaIcon type='check' /> 确定
            </Button>
            <a className='ant-btn ant-btn-primary' href={@props.cancel_url}>
              <FaIcon type='close' /> 取消
            </a>
          </FormItem>

        </Form>
      </div>
    </div>

  submit: (evt)->
    evt.preventDefault()
    data = @props.form.getFieldsValue()
    if @props.organization.name == null
      jQuery.ajax
        type: 'POST'
        url: @props.submit_url
        data: data
    else
      jQuery.ajax
        type: 'PUT'
        url: @props.submit_url
        data: data

module.exports = CreateUpdatePage = Form.create()(Page)