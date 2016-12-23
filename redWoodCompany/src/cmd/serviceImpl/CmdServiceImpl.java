package cmd.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import cmd.service.CmdService;
import helper.dao.CommonDAO;

@Service("cmdService")
public class CmdServiceImpl implements CmdService {

	private final static Log logger = LogFactory.getLog(AdminServiceImpl.class);
	
	@Resource(name="commonDao")
	private CommonDAO commonDao;

	@Override
	public List<Object> mainImg_GET() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("cmd.mainImg_GET");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}

	@Override
	public List<Object> cgImg_GET() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("cmd.cgImg_GET");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return result;
	}

	@Override
	public List<Object> constructionImg_GET() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("cmd.constructionImg_GET");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return result;
	}

	@Override
	public List<Object> vrMP4_GET() {
		// TODO Auto-generated method stub
		List<Object> result = null;
		
		try {
			result = this.commonDao.getListData("cmd.vrMP4_GET");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return result;
	}

	@Override
	public void contactInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub		
		try {
			this.commonDao.insertData("cmd.contactInsert", map);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
