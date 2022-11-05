using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer.UnitOfWork;
using EntityLayer;

namespace DataLayer.DataHelper
{
    public class UserHelper
    {

        DataLayer.UnitOfWork.UnitOfWork uow = null;

        public bool RegisterUser(EntityLayer.User user)
        {
            bool isRegsitered = false;

            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    User userdb = new User();
                    userdb.Address = user.Address;
                    userdb.Email = user.Email;
                    userdb.Name = user.Name;
                    userdb.Password = user.Password;
                    userdb.Username = user.Username;
                    userdb.UserType = user.UserType;
                    uow.UserRepository.Insert(userdb);
                    uow.Save();
                    isRegsitered = true;
                }
                catch
                {
                    isRegsitered = false;
                }
            }

            return isRegsitered;
        }

        public EntityLayer.User LoginUser(string usr, string pwd, string usertype)
        {
            EntityLayer.User usrdt = new EntityLayer.User();
            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    User usd = uow.UserRepository.Get().Where(x => x.Username == usr && x.Password == pwd && x.UserType == usertype).FirstOrDefault();
                    usrdt.Email = usd.Email;
                    usrdt.Name = usd.Name;
                    usrdt.UserID = usd.UserID;
                    usrdt.Username = usd.Username;

                }
                catch
                {
                    usrdt = null;
                }
            }
            return usrdt;
        }

        public bool EditUser(EntityLayer.User user)
        {
            bool isEdited = false;

            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    User userdb = uow.UserRepository.Get().Where(u => u.UserID.Equals(user.UserID)).FirstOrDefault();
                    userdb.Address = user.Address;
                    userdb.Email = user.Email;
                    userdb.Name = user.Name;
                    userdb.Password = user.Password;
                    userdb.Username = user.Username;
                    userdb.UserID = user.UserID;
                    uow.UserRepository.Update(userdb);
                    uow.Save();
                    isEdited = true;
                }
                catch
                {
                    isEdited = false;
                }
            }

            return isEdited;
        }

        public List<EntityLayer.User> GetAllUsers()
        {
            List<EntityLayer.User> lstUsers = new List<EntityLayer.User>();
            using (uow = new UnitOfWork.UnitOfWork())
            {
                try
                {
                    lstUsers = uow.UserRepository.Get().Select(usd => new EntityLayer.User
                    {
                        Address = usd.Address,
                        Email = usd.Email,
                        Name = usd.Name,
                        Username = usd.Username,
                        Password = usd.Password,
                        UserID = usd.UserID,
                    }).ToList();
                }
                catch
                {

                }
            }
            return lstUsers;
        }

    }
}
