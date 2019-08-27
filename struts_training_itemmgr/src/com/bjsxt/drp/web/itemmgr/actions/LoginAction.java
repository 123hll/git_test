package com.bjsxt.drp.web.itemmgr.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjsxt.drp.business.itemmgr.manager.ItemManager;
import com.bjsxt.drp.business.itemmgr.model.Item;
import com.bjsxt.drp.business.itemmgr.model.UserBean;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.bjsxt.drp.web.itemmgr.forms.LoginActionForm;

/**
 * �û���¼Action
 * @author Administrator
 *
 */
public class LoginAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		LoginActionForm laf = (LoginActionForm)form;
       // Item item = new Item();
        UserBean userBean=new UserBean();
        //������ֵ��ItemActionForm���󿽱���Item����
        BeanUtils.copyProperties(userBean,laf);
       boolean falg=ItemManager.getInstance().login(userBean);
       System.out.println(falg);
		if (falg=true) {
			request.getSession().setAttribute("user",userBean.getUsername());
			return mapping.findForward("sucess");
		}else {
			return mapping.findForward("index");
		}
	}

}
