-- Mental Health Support and Counseling Services in Lua

-- Create global table of available services
local services = {
	["therapy"] = true,
	["psychological_testing"] = true,
	["medication_management"] = true,
	["counseling"] = true,
	["crisis_intervention"] = true
}

-- Create function to determine if a service is available
function services.isAvailable(service)
	if not service or services[service] == nil then
		return false
	end
	return services[service]
end

-- Create function to add services to the table
function services.add(service)
	if not service or services[service] ~= nil then
		return false
	end
	services[service] = true
	return true
end

-- Create function to remove services from table
function services.remove(service)
	if not service or services[service] == nil then
		return false
	end
	services[service] = nil
	return true
end

-- Create function to get list of available services
function services.list()
	local list = {}
	for service, _ in pairs(services) do
		table.insert(list, service)
	end
	return list
end

-- Create global table for mental health support and counseling services
local mentalHealth = {
	["services"] = services
}

-- Create function to get description of a service
function mentalHealth.getDescription(service)
	if not service then
		return "No service was specified."
	end
	if services[service] == nil then
		return "This service is not available."
	end
	
	if service == "therapy" then
		return [[Therapy is a form of psychological treatment in which a person works with a therapist 
		or counselor to explore underlying issues, underlying patterns of behavior, and recognize 
		habits that are not helping them grow. The therapist helps the person develop the skills 
		and insights they need to make changes in their life.]]
	elseif service == "psychological_testing" then
		return [[Psychological testing is a process of objectively measuring the psychological strengths 
		and weaknesses of a person. Tests can measure abilities, such as intelligence, memory, and 
		personality. These tests help diagnose and treat mental health disorders.]]
	elseif service == "medication_management" then
		return [[Medication management is a system of managing medications and treatments for a person 
		with a mental health disorder. This includes evaluation, managing dosage, monitoring side 
		effects, and combining treatments and medications. The goal of medication management is to 
		find the most effective combination to reduce symptoms and improve functioning.]]
	elseif service == "counseling" then
		return [[Counseling is a form of therapy which helps people to explore their feelings, beliefs, 
		and behaviors. It helps people find solutions to their problems and gain new perspectives. 
		Counseling can help people to deal with a wide range of issues, including stress, anxiety, 
		depression, grief, and anger.]]
	elseif service == "crisis_intervention" then
		return [[Crisis intervention is a short-term, emotionally-focused approach to helping people 
		resolve a problem quickly so that they can return to their normal functioning. It can help 
		a person in distress gain the insight and skills to cope with the problem. Crisis 
		intervention also helps prevent crises from escalating and getting worse.]]
	end
end

-- Return the table
return mentalHealth