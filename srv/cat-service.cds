using scp.cloud from '../db/data-model';

service RequestService {
  entity Requests as projection on cloud.Requests;

  @readonly
  entity GlobalRegion as projection on cloud.GlobalRegion;

  @readonly
  entity Country as projection on cloud.Country;

  @readonly
  entity Priority as projection on cloud.Priority;
}