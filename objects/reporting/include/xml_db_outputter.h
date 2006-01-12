#ifndef _XML_DB_OUTPUTTER_H_
#define _XML_DB_OUTPUTTER_H_
#if defined(_MSC_VER)
#pragma once
#endif

/* 
* This software, which is provided in confidence, was prepared by employees of
* Pacific Northwest National Laboratory operated by Battelle Memorial Institute.
* Battelle has certain unperfected rights in the software which should not be
* copied or otherwise disseminated outside your organization without the express
* written authorization from Battelle. All rights to the software are reserved
* by Battelle. Battelle makes no warranty, express or implied, and assumes no
* liability or responsibility for the use of this software.
*/

/*! 
* \file xml_db_outputter.h
* \ingroup Objects
* \brief XMLDBOutputter class header file.
* \author Josh Lurz
* \date $Date$
* \version $Revision$
*/

#include <iosfwd>
#include <sstream>
#include <memory>
#include "util/base/include/default_visitor.h"

#include "dbxml/DbXml.hpp"

class Scenario;
class World;
class Region;
class Resource;
class Sector;
class Subsector;
class technology;
class Ghg;
class Tabs;
class Demographic;
class Population;
class AgeCohort;
class Gender;
class GDP;

/*! 
* \ingroup Objects
* \brief 
* \details
* \author Josh Lurz
*/

class XMLDBOutputter : public DefaultVisitor {
public:
	XMLDBOutputter();

    void finish() const;

	void startVisitScenario( const Scenario* aScenario, const int aPeriod );
	void endVisitScenario( const Scenario* aScenario, const int aPeriod );
	
	void startVisitOutputMetaData( const OutputMetaData* aOutputMetaData, const int aPeriod );
	void endVisitOutputMetaData( const OutputMetaData* aOutputMetaData, const int aPeriod );
	
	void startVisitWorld( const World* aWorld, const int aPeriod );
	void endVisitWorld( const World* aWorld, const int aPeriod );

	void startVisitRegion( const Region* aRegion, const int aPeriod );
	void endVisitRegion( const Region* aRegion, const int aPeriod );

	void startVisitResource( const Resource* aResource, const int aPeriod );
	void endVisitResource( const Resource* aResource, const int aPeriod );
    
	void startVisitSubResource( const SubResource* aSubResource, const int aPeriod );
	void endVisitSubResource( const SubResource* aSubResource, const int aPeriod );

	void startVisitGrade( const Grade* aGrade, const int aPeriod );
	void endVisitGrade( const Grade* aGrade, const int aPeriod );

	void startVisitSector( const Sector* aSector, const int aPeriod );
	void endVisitSector( const Sector* aSector, const int aPeriod );

	void startVisitSubsector( const Subsector* aSubsector, const int aPeriod );
	void endVisitSubsector( const Subsector* aSubsector, const int aPeriod );

    virtual void startVisitBuildingDemandSubsector( const BuildingDemandSubSector* aSubsector,
                                                    const int aPeriod );
    virtual void endVisitBuildingDemandSubsector( const BuildingDemandSubSector* aSubsector,
                                                  const int aPeriod );

	void startVisitTechnology( const technology* aTechnology, const int aPeriod );
	void endVisitTechnology( const technology* aTechnology, const int aPeriod );

	void startVisitGHG( const Ghg* aGHG, const int aPeriod );
	void endVisitGHG( const Ghg* aGHG, const int aPeriod );

	void startVisitMarketplace( const Marketplace* aMarketplace, const int aPeriod );
	void endVisitMarketplace( const Marketplace* aMarketplace, const int aPeriod );

	void startVisitMarket( const Market* aMarket, const int aPeriod );
	void endVisitMarket( const Market* aMarket, const int aPeriod );

	virtual void startVisitClimateModel( const IClimateModel* aClimateModel, const int aPeriod );
	virtual void endVisitClimateModel( const IClimateModel* aClimateModel, const int aPeriod );

	void startVisitDemographic( const Demographic* aDemographic, const int aPeriod );
	void endVisitDemographic( const Demographic* aDemographic, const int aPeriod );

	void startVisitPopulation( const Population* aPopulation, const int aPeriod );
	void endVisitPopulation( const Population* aPopulation, const int aPeriod );
	
	void startVisitAgeCohort( const AgeCohort* aAgeCohort, const int aPeriod );
	void endVisitAgeCohort( const AgeCohort* aAgeCohort, const int aPeriod );
	
	void startVisitGender( const Gender* aGender, const int aPeriod );
	void endVisitGender( const Gender* aGender, const int aPeriod );
    
    void startVisitGDP( const GDP* aGDP, const int aPeriod );
    void endVisitGDP( const GDP* aGDP, const int aPeriod );

	static bool appendData( const std::string& aData, const std::string& aLocation );
private:
	//! Stringstream containing all the information until it is printed.
	mutable std::stringstream mBuffer;
    
    //! Current region name.
    std::string mCurrentRegion;
    
    //! Current sector name.
    std::string mCurrentSector;

	//! Current technology fuel stored from Technology so that GHG may access
    //! this. This is updated when the visitor reaches each Technology.
	std::string mCurrentFuel;
	
	//! Current technology year stored from Technology so that GHG may access
    //! this. This is updated when the visitor reaches each Technology.
	int mCurrentTechYear;

	//! Tabs object.
	std::auto_ptr<Tabs> mTabs;
	
	/*! \brief Contains all objects neccessary to operate on a container.
	* \details This struct defines the set of objects that must have the same
    *          lifetime so that the XML database outputter can operate on the
    *          container. The struct also ensures that the objects are deleted
    *          in the correct ordering to avoid accessing already deleted
    *          objects.
	* \note These objects must be in this order so destruction works correctly.
    */
	struct DBContainer {
		//! The database environment.
		DbEnv* mDBEnvironment;

		//! The database manager.
		std::auto_ptr<DbXml::XmlManager> mManager;
		
		//! Wrapper around the XML container so the memory can be dynamically
        //! allocated.
		struct XMLContainerWrapper {
			XMLContainerWrapper( DbXml::XmlContainer aContainer );
			//! The XML container.
			DbXml::XmlContainer mContainer;
		};
		
		//! The wrapper around the XML container.
		std::auto_ptr<XMLContainerWrapper> mContainerWrapper;
        DBContainer();
		~DBContainer();
	};
	static std::auto_ptr<DBContainer> createContainer();
	static const std::string createContainerName( const std::string& aScenarioName );
};

#endif // _XML_DB_OUTPUTTER_H_