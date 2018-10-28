using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using TygaSoft.Model;

namespace TygaSoft.IDAL
{
    public partial interface IAssetUseRefund
    {
        #region IAssetUseRefund Member

        /// <summary>
        /// 添加数据到数据库
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        int Insert(AssetUseRefundInfo model);

        /// <summary>
        /// 修改数据
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        int Update(AssetUseRefundInfo model);

        /// <summary>
        /// 删除对应数据
        /// </summary>
        /// <param name="useRefundId"></param>
        /// <returns></returns>
        int Delete(object useRefundId);

        /// <summary>
        /// 批量删除数据（启用事务）
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        bool DeleteBatch(IList<object> list);

        /// <summary>
        /// 获取对应的数据
        /// </summary>
        /// <param name="useRefundId"></param>
        /// <returns></returns>
        AssetUseRefundInfo GetModel(object useRefundId);

        /// <summary>
        /// 获取数据分页列表，并返回所有记录数
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="totalRecords"></param>
        /// <param name="sqlWhere"></param>
        /// <param name="cmdParms"></param>
        /// <returns></returns>
        IList<AssetUseRefundInfo> GetList(int pageIndex, int pageSize, out int totalRecords, string sqlWhere, params SqlParameter[] cmdParms);

        /// <summary>
        /// 获取满足当前条件的数据列表
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="sqlWhere"></param>
        /// <param name="cmdParms"></param>
        /// <returns></returns>
        IList<AssetUseRefundInfo> GetList(int pageIndex, int pageSize, string sqlWhere, params SqlParameter[] cmdParms);

        /// <summary>
        /// 获取满足当前条件的数据列表
        /// </summary>
        /// <param name="sqlWhere"></param>
        /// <param name="cmdParms"></param>
        /// <returns></returns>
        IList<AssetUseRefundInfo> GetList(string sqlWhere, params SqlParameter[] cmdParms);

        /// <summary>
        /// 获取数据列表
        /// </summary>
        /// <returns></returns>
        IList<AssetUseRefundInfo> GetList();

        #endregion
    }
}
