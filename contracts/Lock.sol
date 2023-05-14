// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Helth {
    // All struct
    struct PatientParient {
        string name;
        address patientParient;
        uint256 age;
        string gender;
        uint256 birthDay;
        string bloodGroup;
        uint256 nid;
        bool isAdded;
    }
    struct Patient {
        address patient;
        string name;
        uint256 age;
        uint256 patientId;
        string gender;
        uint256 birthDay;
        string bloodGroup;
        PatientParient patientParient;
        uint256 nid;
        bool isAdded;
    }

    struct Credential {
        address issuerAddress;
        string credentielType;
        string credentialIssuer;
        string credentialValue;
        string dateIssued;
        bool isAdded;
    }
    struct Doctor {
        address doctor;
        string name;
        uint256 age;
        uint256 doctorId;
        uint256 nid;
        Patient[] patient;
        bool isAdded;
    }
    struct PharmacyCompany {
        address pharmacyCompany;
        string name;
        uint256 pharmacyCompanyId;
        bool isAdded;
    }

    struct Pharmaciest {
        address pharmaciest;
        string name;
        uint256 pharmaciestId;
        bool isAdded;
    }

    struct FoodIndusty {
        address foodIndusty;
        string name;
        uint256 foodIndustyId;
        bool isAdded;
    }

    struct Hospital {
        address hospital;
        string name;
        uint256 hospitalId;
        bool isAdded;
    }

    struct Pharmacy {
        address pharmacy;
        string name;
        uint256 pharmacyId;
        bool isAdded;
    }

    struct DataAnalyst {
        address dataAnalyst;
        string name;
        uint256 dataAnalystId;
        bool isAdded;
    }
    // all maping
    mapping(address => Patient) public allPatient;
    mapping(address => PatientParient) public allPatientParient;
    mapping(address => Doctor) public allDoctor;
    mapping(address => PharmacyCompany) public allPharmacyCompany;
    mapping(address => Pharmaciest) public allPharmaciest;
    mapping(address => FoodIndusty) public allFoodIndusty;
    mapping(address => Hospital) public allHospital;
    mapping(address => Pharmacy) public allPharmacy;
    mapping(address => DataAnalyst) public allDataAnalyst;
    mapping(address => Credential) public allCredential;

    //all address

    address[] public allPatientAddress;
    address[] public allPatientParientAddress;
    address[] public allDoctorAddress;
    address[] public allPharmacyCompanyAddress;
    address[] public allPharmaciestAddress;
    address[] public allFoodIndustyAddress;
    address[] public allHospitalAddress;
    address[] public allPharmacyAddress;
    address[] public allDataAnalystAddress;
    address[] public allCredentialAddress;
    address public ContractOwner;

    constructor() {
        ContractOwner = msg.sender;
    }

    function addPatient(
        address _patient,
        string memory _name,
        uint256 _age,
        uint256 _patientId,
        string memory _gender,
        uint256 _birthDay,
        string memory _bloodGroup,
        uint256 _nid
    ) public {
        Patient storage newPatient = allPatient[_patient];

        newPatient.patient = _patient;
        newPatient.name = _name;
        newPatient.age = _age;
        newPatient.patientId = _patientId;
        newPatient.gender = _gender;
        newPatient.birthDay = _birthDay;
        newPatient.nid = _nid;
        newPatient.bloodGroup = _bloodGroup;
        newPatient.isAdded = true;
        allPatientAddress.push(_patient);
    }

    function viewPatient(
        address _patient
    )
        public
        view
        returns (
            address,
            string memory,
            uint256,
            uint256,
            string memory,
            uint256,
            string memory,
            uint256,
            bool
        )
    {
        Patient memory newPatient = allPatient[_patient];

        return (
            newPatient.patient,
            newPatient.name,
            newPatient.age,
            newPatient.patientId,
            newPatient.gender,
            newPatient.birthDay,
            newPatient.bloodGroup,
            newPatient.nid,
            newPatient.isAdded
        );
    }

    function addDoctor(
        address _doctor,
        string memory _name,
        uint256 _age,
        uint256 _doctorId,
        uint256 _nid
    ) public {
        Doctor storage newDoctor = allDoctor[_doctor];

        newDoctor.doctor = _doctor;
        newDoctor.name = _name;
        newDoctor.age = _age;
        newDoctor.doctorId = _doctorId;
        newDoctor.nid = _nid;
        newDoctor.isAdded = true;
        allDoctorAddress.push(_doctor);
    }

    function viewDoctor(
        address _doctor
    )
        public
        view
        returns (address, string memory, uint256, uint256, uint256, bool)
    {
        Doctor storage newDoctor = allDoctor[_doctor];

        return (
            newDoctor.doctor,
            newDoctor.name,
            newDoctor.age,
            newDoctor.doctorId,
            newDoctor.nid,
            newDoctor.isAdded
        );
    }

    function addPharmacyCompany(
        address _pharmacyCompany,
        string memory _name,
        uint256 _pharmacyCompanyId
    ) public {
        PharmacyCompany storage newPharmacyCompany = allPharmacyCompany[
            _pharmacyCompany
        ];

        newPharmacyCompany.pharmacyCompany = _pharmacyCompany;
        newPharmacyCompany.name = _name;
        newPharmacyCompany.pharmacyCompanyId = _pharmacyCompanyId;
        newPharmacyCompany.isAdded = true;
        allPharmacyCompanyAddress.push(_pharmacyCompany);
    }

    function viewPharmacyCompany(
        address _pharmacyCompany
    ) public view returns (address, string memory, uint256, bool) {
        PharmacyCompany storage newPharmacyCompany = allPharmacyCompany[
            _pharmacyCompany
        ];

        return (
            newPharmacyCompany.pharmacyCompany,
            newPharmacyCompany.name,
            newPharmacyCompany.pharmacyCompanyId,
            newPharmacyCompany.isAdded
        );
    }

    function addPharmaciest(
        address _pharmaciest,
        string memory _name,
        uint256 _pharmaciestId
    ) public {
        Pharmaciest storage newPharmaciest = allPharmaciest[_pharmaciest];

        newPharmaciest.pharmaciest = _pharmaciest;
        newPharmaciest.name = _name;
        newPharmaciest.pharmaciestId = _pharmaciestId;
        newPharmaciest.isAdded = true;
        allPharmaciestAddress.push(_pharmaciest);
    }

    function viewPharmaciest(
        address _pharmaciest
    ) public view returns (address, string memory, uint256, bool) {
        Pharmaciest storage newPharmaciest = allPharmaciest[_pharmaciest];

        return (
            newPharmaciest.pharmaciest,
            newPharmaciest.name,
            newPharmaciest.pharmaciestId,
            newPharmaciest.isAdded
        );
    }

    function addFoodIndusty(
        address _foodIndusty,
        string memory _name,
        uint256 _foodIndustyId
    ) public {
        FoodIndusty storage newFoodIndusty = allFoodIndusty[_foodIndusty];

        newFoodIndusty.foodIndusty = _foodIndusty;
        newFoodIndusty.name = _name;
        newFoodIndusty.foodIndustyId = _foodIndustyId;
        newFoodIndusty.isAdded = true;
        allFoodIndustyAddress.push(_foodIndusty);
    }

    function viewFoodIndusty(
        address _foodIndusty
    ) public view returns (address, string memory, uint256, bool) {
        FoodIndusty storage newFoodIndusty = allFoodIndusty[_foodIndusty];

        return (
            newFoodIndusty.foodIndusty,
            newFoodIndusty.name,
            newFoodIndusty.foodIndustyId,
            newFoodIndusty.isAdded
        );
    }

    function addHospital(
        address _hospital,
        string memory _name,
        uint256 _hospitalId
    ) public {
        Hospital storage newHospital = allHospital[_hospital];

        newHospital.hospital = _hospital;
        newHospital.name = _name;
        newHospital.hospitalId = _hospitalId;

        newHospital.isAdded = true;
        allHospitalAddress.push(_hospital);
    }

    function viewHospital(
        address _hospital
    ) public view returns (address, string memory, uint256, bool) {
        Hospital storage newHospital = allHospital[_hospital];

        return (
            newHospital.hospital,
            newHospital.name,
            newHospital.hospitalId,
            newHospital.isAdded
        );
    }

    function addDataAnalyst(
        address _dataAnalyst,
        string memory _name,
        uint256 _dataAnalystId
    ) public {
        DataAnalyst storage newDataAnalyst = allDataAnalyst[_dataAnalyst];

        newDataAnalyst.dataAnalyst = _dataAnalyst;
        newDataAnalyst.name = _name;
        newDataAnalyst.dataAnalystId = _dataAnalystId;

        newDataAnalyst.isAdded = true;
        allDataAnalystAddress.push(_dataAnalyst);
    }

    function viewDataAnalyst(
        address _dataAnalyst
    ) public view returns (address, string memory, uint256, bool) {
        DataAnalyst storage newDataAnalyst = allDataAnalyst[_dataAnalyst];

        return (
            newDataAnalyst.dataAnalyst,
            newDataAnalyst.name,
            newDataAnalyst.dataAnalystId,
            newDataAnalyst.isAdded
        );
    }

    function addPharmacy(
        address _pharmacy,
        string memory _name,
        uint256 _pharmacyId
    ) public {
        Pharmacy storage newPharmacy = allPharmacy[_pharmacy];

        newPharmacy.pharmacy = _pharmacy;
        newPharmacy.name = _name;
        newPharmacy.pharmacyId = _pharmacyId;

        newPharmacy.isAdded = true;
        allPharmacyAddress.push(_pharmacy);
    }

    function viewPharmacy(
        address _pharmacy
    ) public view returns (address, string memory, uint256, bool) {
        Pharmacy storage newPharmacy = allPharmacy[_pharmacy];

        return (
            newPharmacy.pharmacy,
            newPharmacy.name,
            newPharmacy.pharmacyId,
            newPharmacy.isAdded
        );
    }

    function addCredential(
        address _issuerAddress,
        string memory _credentielType,
        string memory _credentialIssuer,
        string memory _credentialValue,
        string memory _dateIssued
    ) public {
        Credential storage newCredential = allCredential[_issuerAddress];

        newCredential.issuerAddress = _issuerAddress;
        newCredential.credentielType = _credentielType;
        newCredential.credentialIssuer = _credentialIssuer;
        newCredential.credentialValue = _credentialValue;
        newCredential.dateIssued = _dateIssued;
        newCredential.isAdded = true;
        allCredentialAddress.push(_issuerAddress);
    }

    function viewCredential(
        address _issuerAddress
    )
        public
        view
        returns (
            address,
            string memory,
            string memory,
            string memory,
            string memory,
            bool
        )
    {
        Credential storage newCredential = allCredential[_issuerAddress];

        return (
            newCredential.issuerAddress,
            newCredential.credentielType,
            newCredential.credentialIssuer,
            newCredential.credentialValue,
            newCredential.dateIssued,
            newCredential.isAdded
        );
    }

    function addPatientParient(
        string memory _name,
        address _patientParient,
        uint256 _age,
        string memory _gender,
        uint256 _birthDay,
        string memory _bloodGroup,
        uint256 _nid
    ) public {
        PatientParient storage newPatientParient = allPatientParient[
            _patientParient
        ];

        newPatientParient.name = _name;
        newPatientParient.patientParient = _patientParient;
        newPatientParient.age = _age;

        newPatientParient.gender = _gender;
        newPatientParient.birthDay = _birthDay;
        newPatientParient.bloodGroup = _bloodGroup;
        newPatientParient.nid = _nid;

        newPatientParient.isAdded = true;
        allPatientParientAddress.push(_patientParient);
    }

    function viewPatientParient(
        address _patientParient
    )
        public
        view
        returns (
            string memory,
            address,
            uint256,
            string memory,
            uint256,
            string memory,
            uint256,
            bool
        )
    {
        PatientParient memory newPatientParient = allPatientParient[
            _patientParient
        ];

        return (
            newPatientParient.name,
            newPatientParient.patientParient,
            newPatientParient.age,
            newPatientParient.gender,
            newPatientParient.birthDay,
            newPatientParient.bloodGroup,
            newPatientParient.nid,
            newPatientParient.isAdded
        );
    }
}
