package springboot.backend.apirest.app.models.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import springboot.backend.apirest.app.models.dao.IClienteDao;
import springboot.backend.apirest.app.models.entity.Cliente;
import springboot.backend.apirest.app.models.entity.Region;

@Service
public class ClienteServiceImpl implements IClienteService{

	@Autowired
	private IClienteDao clienteDao;
	
	@Override
	@Transactional()
	public List<Cliente> findAll() {
		return (List<Cliente>) clienteDao.findAll();
	}
	
	@Override
	@Transactional()
	public Page<Cliente> findAll(Pageable pageable) {
		return clienteDao.findAll(pageable);
	}

	@Override
	@Transactional()
	public Cliente findById(Long id) {
		return clienteDao.findById(id).orElse(null);
	}

	@Override
	@Transactional()
	public Cliente save(Cliente cliente) {
		return clienteDao.save(cliente);
	}

	@Override
	@Transactional()
	public void delete(Long id) {
		clienteDao.deleteById(id);		
	}

	@Override
	@Transactional()
	public List<Region> findAllRegiones() {
		return clienteDao.findAllRegiones();
	}

}
