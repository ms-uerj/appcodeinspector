﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.1
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CIDao
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="CodeInspector")]
	public partial class CILinqDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertHistorico_Questao(Historico_Questao instance);
    partial void UpdateHistorico_Questao(Historico_Questao instance);
    partial void DeleteHistorico_Questao(Historico_Questao instance);
    partial void InsertQuestao(Questao instance);
    partial void UpdateQuestao(Questao instance);
    partial void DeleteQuestao(Questao instance);
    partial void InsertPartida(Partida instance);
    partial void UpdatePartida(Partida instance);
    partial void DeletePartida(Partida instance);
    partial void InsertUsuario(Usuario instance);
    partial void UpdateUsuario(Usuario instance);
    partial void DeleteUsuario(Usuario instance);
    #endregion
		
		public CILinqDataContext() : 
				base(global::CIDao.Properties.Settings.Default.CodeInspectorConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public CILinqDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CILinqDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CILinqDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public CILinqDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Historico_Questao> Historico_Questaos
		{
			get
			{
				return this.GetTable<Historico_Questao>();
			}
		}
		
		public System.Data.Linq.Table<Questao> Questaos
		{
			get
			{
				return this.GetTable<Questao>();
			}
		}
		
		public System.Data.Linq.Table<Partida> Partidas
		{
			get
			{
				return this.GetTable<Partida>();
			}
		}
		
		public System.Data.Linq.Table<Usuario> Usuarios
		{
			get
			{
				return this.GetTable<Usuario>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Historico_Questao")]
	public partial class Historico_Questao : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _H_ID;
		
		private System.Nullable<int> _P_ID;
		
		private System.Nullable<int> _Q_ID;
		
		private System.Nullable<int> _H_QTD_ACERTO;
		
		private System.Nullable<int> _H_QTD_ERRO;
		
		private EntityRef<Questao> _Questao;
		
		private EntityRef<Partida> _Partida;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnH_IDChanging(int value);
    partial void OnH_IDChanged();
    partial void OnP_IDChanging(System.Nullable<int> value);
    partial void OnP_IDChanged();
    partial void OnQ_IDChanging(System.Nullable<int> value);
    partial void OnQ_IDChanged();
    partial void OnH_QTD_ACERTOChanging(System.Nullable<int> value);
    partial void OnH_QTD_ACERTOChanged();
    partial void OnH_QTD_ERROChanging(System.Nullable<int> value);
    partial void OnH_QTD_ERROChanged();
    #endregion
		
		public Historico_Questao()
		{
			this._Questao = default(EntityRef<Questao>);
			this._Partida = default(EntityRef<Partida>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_H_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int H_ID
		{
			get
			{
				return this._H_ID;
			}
			set
			{
				if ((this._H_ID != value))
				{
					this.OnH_IDChanging(value);
					this.SendPropertyChanging();
					this._H_ID = value;
					this.SendPropertyChanged("H_ID");
					this.OnH_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_ID", DbType="Int")]
		public System.Nullable<int> P_ID
		{
			get
			{
				return this._P_ID;
			}
			set
			{
				if ((this._P_ID != value))
				{
					if (this._Partida.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnP_IDChanging(value);
					this.SendPropertyChanging();
					this._P_ID = value;
					this.SendPropertyChanged("P_ID");
					this.OnP_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Q_ID", DbType="Int")]
		public System.Nullable<int> Q_ID
		{
			get
			{
				return this._Q_ID;
			}
			set
			{
				if ((this._Q_ID != value))
				{
					if (this._Questao.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnQ_IDChanging(value);
					this.SendPropertyChanging();
					this._Q_ID = value;
					this.SendPropertyChanged("Q_ID");
					this.OnQ_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_H_QTD_ACERTO", DbType="Int")]
		public System.Nullable<int> H_QTD_ACERTO
		{
			get
			{
				return this._H_QTD_ACERTO;
			}
			set
			{
				if ((this._H_QTD_ACERTO != value))
				{
					this.OnH_QTD_ACERTOChanging(value);
					this.SendPropertyChanging();
					this._H_QTD_ACERTO = value;
					this.SendPropertyChanged("H_QTD_ACERTO");
					this.OnH_QTD_ACERTOChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_H_QTD_ERRO", DbType="Int")]
		public System.Nullable<int> H_QTD_ERRO
		{
			get
			{
				return this._H_QTD_ERRO;
			}
			set
			{
				if ((this._H_QTD_ERRO != value))
				{
					this.OnH_QTD_ERROChanging(value);
					this.SendPropertyChanging();
					this._H_QTD_ERRO = value;
					this.SendPropertyChanged("H_QTD_ERRO");
					this.OnH_QTD_ERROChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Questao_Historico_Questao", Storage="_Questao", ThisKey="Q_ID", OtherKey="Q_ID", IsForeignKey=true)]
		public Questao Questao
		{
			get
			{
				return this._Questao.Entity;
			}
			set
			{
				Questao previousValue = this._Questao.Entity;
				if (((previousValue != value) 
							|| (this._Questao.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Questao.Entity = null;
						previousValue.Historico_Questaos.Remove(this);
					}
					this._Questao.Entity = value;
					if ((value != null))
					{
						value.Historico_Questaos.Add(this);
						this._Q_ID = value.Q_ID;
					}
					else
					{
						this._Q_ID = default(Nullable<int>);
					}
					this.SendPropertyChanged("Questao");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Partida_Historico_Questao", Storage="_Partida", ThisKey="P_ID", OtherKey="P_ID", IsForeignKey=true)]
		public Partida Partida
		{
			get
			{
				return this._Partida.Entity;
			}
			set
			{
				Partida previousValue = this._Partida.Entity;
				if (((previousValue != value) 
							|| (this._Partida.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Partida.Entity = null;
						previousValue.Historico_Questaos.Remove(this);
					}
					this._Partida.Entity = value;
					if ((value != null))
					{
						value.Historico_Questaos.Add(this);
						this._P_ID = value.P_ID;
					}
					else
					{
						this._P_ID = default(Nullable<int>);
					}
					this.SendPropertyChanged("Partida");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Questao")]
	public partial class Questao : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Q_ID;
		
		private System.Nullable<int> _Q_NIVEL_DIFICULDADE;
		
		private string _Q_XML;
		
		private System.Nullable<int> _Q_TEMPO;
		
		private EntitySet<Historico_Questao> _Historico_Questaos;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnQ_IDChanging(int value);
    partial void OnQ_IDChanged();
    partial void OnQ_NIVEL_DIFICULDADEChanging(System.Nullable<int> value);
    partial void OnQ_NIVEL_DIFICULDADEChanged();
    partial void OnQ_XMLChanging(string value);
    partial void OnQ_XMLChanged();
    partial void OnQ_TEMPOChanging(System.Nullable<int> value);
    partial void OnQ_TEMPOChanged();
    #endregion
		
		public Questao()
		{
			this._Historico_Questaos = new EntitySet<Historico_Questao>(new Action<Historico_Questao>(this.attach_Historico_Questaos), new Action<Historico_Questao>(this.detach_Historico_Questaos));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Q_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Q_ID
		{
			get
			{
				return this._Q_ID;
			}
			set
			{
				if ((this._Q_ID != value))
				{
					this.OnQ_IDChanging(value);
					this.SendPropertyChanging();
					this._Q_ID = value;
					this.SendPropertyChanged("Q_ID");
					this.OnQ_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Q_NIVEL_DIFICULDADE", DbType="Int")]
		public System.Nullable<int> Q_NIVEL_DIFICULDADE
		{
			get
			{
				return this._Q_NIVEL_DIFICULDADE;
			}
			set
			{
				if ((this._Q_NIVEL_DIFICULDADE != value))
				{
					this.OnQ_NIVEL_DIFICULDADEChanging(value);
					this.SendPropertyChanging();
					this._Q_NIVEL_DIFICULDADE = value;
					this.SendPropertyChanged("Q_NIVEL_DIFICULDADE");
					this.OnQ_NIVEL_DIFICULDADEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Q_XML", DbType="NText", UpdateCheck=UpdateCheck.Never)]
		public string Q_XML
		{
			get
			{
				return this._Q_XML;
			}
			set
			{
				if ((this._Q_XML != value))
				{
					this.OnQ_XMLChanging(value);
					this.SendPropertyChanging();
					this._Q_XML = value;
					this.SendPropertyChanged("Q_XML");
					this.OnQ_XMLChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Q_TEMPO", DbType="Int")]
		public System.Nullable<int> Q_TEMPO
		{
			get
			{
				return this._Q_TEMPO;
			}
			set
			{
				if ((this._Q_TEMPO != value))
				{
					this.OnQ_TEMPOChanging(value);
					this.SendPropertyChanging();
					this._Q_TEMPO = value;
					this.SendPropertyChanged("Q_TEMPO");
					this.OnQ_TEMPOChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Questao_Historico_Questao", Storage="_Historico_Questaos", ThisKey="Q_ID", OtherKey="Q_ID")]
		public EntitySet<Historico_Questao> Historico_Questaos
		{
			get
			{
				return this._Historico_Questaos;
			}
			set
			{
				this._Historico_Questaos.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Historico_Questaos(Historico_Questao entity)
		{
			this.SendPropertyChanging();
			entity.Questao = this;
		}
		
		private void detach_Historico_Questaos(Historico_Questao entity)
		{
			this.SendPropertyChanging();
			entity.Questao = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Partida")]
	public partial class Partida : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _P_ID;
		
		private System.Nullable<int> _U_ID;
		
		private System.Nullable<System.DateTime> _P_DATA;
		
		private System.Nullable<int> _P_NIVEL_DIFICULDADE;
		
		private System.Nullable<int> _P_PONTUACAO_TOTAL;
		
		private EntitySet<Historico_Questao> _Historico_Questaos;
		
		private EntityRef<Usuario> _Usuario;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnP_IDChanging(int value);
    partial void OnP_IDChanged();
    partial void OnU_IDChanging(System.Nullable<int> value);
    partial void OnU_IDChanged();
    partial void OnP_DATAChanging(System.Nullable<System.DateTime> value);
    partial void OnP_DATAChanged();
    partial void OnP_NIVEL_DIFICULDADEChanging(System.Nullable<int> value);
    partial void OnP_NIVEL_DIFICULDADEChanged();
    partial void OnP_PONTUACAO_TOTALChanging(System.Nullable<int> value);
    partial void OnP_PONTUACAO_TOTALChanged();
    #endregion
		
		public Partida()
		{
			this._Historico_Questaos = new EntitySet<Historico_Questao>(new Action<Historico_Questao>(this.attach_Historico_Questaos), new Action<Historico_Questao>(this.detach_Historico_Questaos));
			this._Usuario = default(EntityRef<Usuario>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int P_ID
		{
			get
			{
				return this._P_ID;
			}
			set
			{
				if ((this._P_ID != value))
				{
					this.OnP_IDChanging(value);
					this.SendPropertyChanging();
					this._P_ID = value;
					this.SendPropertyChanged("P_ID");
					this.OnP_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_ID", DbType="Int")]
		public System.Nullable<int> U_ID
		{
			get
			{
				return this._U_ID;
			}
			set
			{
				if ((this._U_ID != value))
				{
					if (this._Usuario.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnU_IDChanging(value);
					this.SendPropertyChanging();
					this._U_ID = value;
					this.SendPropertyChanged("U_ID");
					this.OnU_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_DATA", DbType="DateTime")]
		public System.Nullable<System.DateTime> P_DATA
		{
			get
			{
				return this._P_DATA;
			}
			set
			{
				if ((this._P_DATA != value))
				{
					this.OnP_DATAChanging(value);
					this.SendPropertyChanging();
					this._P_DATA = value;
					this.SendPropertyChanged("P_DATA");
					this.OnP_DATAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_NIVEL_DIFICULDADE", DbType="Int")]
		public System.Nullable<int> P_NIVEL_DIFICULDADE
		{
			get
			{
				return this._P_NIVEL_DIFICULDADE;
			}
			set
			{
				if ((this._P_NIVEL_DIFICULDADE != value))
				{
					this.OnP_NIVEL_DIFICULDADEChanging(value);
					this.SendPropertyChanging();
					this._P_NIVEL_DIFICULDADE = value;
					this.SendPropertyChanged("P_NIVEL_DIFICULDADE");
					this.OnP_NIVEL_DIFICULDADEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_P_PONTUACAO_TOTAL", DbType="Int")]
		public System.Nullable<int> P_PONTUACAO_TOTAL
		{
			get
			{
				return this._P_PONTUACAO_TOTAL;
			}
			set
			{
				if ((this._P_PONTUACAO_TOTAL != value))
				{
					this.OnP_PONTUACAO_TOTALChanging(value);
					this.SendPropertyChanging();
					this._P_PONTUACAO_TOTAL = value;
					this.SendPropertyChanged("P_PONTUACAO_TOTAL");
					this.OnP_PONTUACAO_TOTALChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Partida_Historico_Questao", Storage="_Historico_Questaos", ThisKey="P_ID", OtherKey="P_ID")]
		public EntitySet<Historico_Questao> Historico_Questaos
		{
			get
			{
				return this._Historico_Questaos;
			}
			set
			{
				this._Historico_Questaos.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Usuario_Partida", Storage="_Usuario", ThisKey="U_ID", OtherKey="U_ID", IsForeignKey=true)]
		public Usuario Usuario
		{
			get
			{
				return this._Usuario.Entity;
			}
			set
			{
				Usuario previousValue = this._Usuario.Entity;
				if (((previousValue != value) 
							|| (this._Usuario.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Usuario.Entity = null;
						previousValue.Partidas.Remove(this);
					}
					this._Usuario.Entity = value;
					if ((value != null))
					{
						value.Partidas.Add(this);
						this._U_ID = value.U_ID;
					}
					else
					{
						this._U_ID = default(Nullable<int>);
					}
					this.SendPropertyChanged("Usuario");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Historico_Questaos(Historico_Questao entity)
		{
			this.SendPropertyChanging();
			entity.Partida = this;
		}
		
		private void detach_Historico_Questaos(Historico_Questao entity)
		{
			this.SendPropertyChanging();
			entity.Partida = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Usuario")]
	public partial class Usuario : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _U_ID;
		
		private string _U_NOME;
		
		private string _U_EMAIL;
		
		private string _U_SENHA;
		
		private string _U_LOGIN;
		
		private EntitySet<Partida> _Partidas;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnU_IDChanging(int value);
    partial void OnU_IDChanged();
    partial void OnU_NOMEChanging(string value);
    partial void OnU_NOMEChanged();
    partial void OnU_EMAILChanging(string value);
    partial void OnU_EMAILChanged();
    partial void OnU_SENHAChanging(string value);
    partial void OnU_SENHAChanged();
    partial void OnU_LOGINChanging(string value);
    partial void OnU_LOGINChanged();
    #endregion
		
		public Usuario()
		{
			this._Partidas = new EntitySet<Partida>(new Action<Partida>(this.attach_Partidas), new Action<Partida>(this.detach_Partidas));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int U_ID
		{
			get
			{
				return this._U_ID;
			}
			set
			{
				if ((this._U_ID != value))
				{
					this.OnU_IDChanging(value);
					this.SendPropertyChanging();
					this._U_ID = value;
					this.SendPropertyChanged("U_ID");
					this.OnU_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_NOME", DbType="VarChar(50)")]
		public string U_NOME
		{
			get
			{
				return this._U_NOME;
			}
			set
			{
				if ((this._U_NOME != value))
				{
					this.OnU_NOMEChanging(value);
					this.SendPropertyChanging();
					this._U_NOME = value;
					this.SendPropertyChanged("U_NOME");
					this.OnU_NOMEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_EMAIL", DbType="VarChar(50)")]
		public string U_EMAIL
		{
			get
			{
				return this._U_EMAIL;
			}
			set
			{
				if ((this._U_EMAIL != value))
				{
					this.OnU_EMAILChanging(value);
					this.SendPropertyChanging();
					this._U_EMAIL = value;
					this.SendPropertyChanged("U_EMAIL");
					this.OnU_EMAILChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_SENHA", DbType="VarChar(15)")]
		public string U_SENHA
		{
			get
			{
				return this._U_SENHA;
			}
			set
			{
				if ((this._U_SENHA != value))
				{
					this.OnU_SENHAChanging(value);
					this.SendPropertyChanging();
					this._U_SENHA = value;
					this.SendPropertyChanged("U_SENHA");
					this.OnU_SENHAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_U_LOGIN", DbType="VarChar(50)")]
		public string U_LOGIN
		{
			get
			{
				return this._U_LOGIN;
			}
			set
			{
				if ((this._U_LOGIN != value))
				{
					this.OnU_LOGINChanging(value);
					this.SendPropertyChanging();
					this._U_LOGIN = value;
					this.SendPropertyChanged("U_LOGIN");
					this.OnU_LOGINChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Usuario_Partida", Storage="_Partidas", ThisKey="U_ID", OtherKey="U_ID")]
		public EntitySet<Partida> Partidas
		{
			get
			{
				return this._Partidas;
			}
			set
			{
				this._Partidas.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Partidas(Partida entity)
		{
			this.SendPropertyChanging();
			entity.Usuario = this;
		}
		
		private void detach_Partidas(Partida entity)
		{
			this.SendPropertyChanging();
			entity.Usuario = null;
		}
	}
}
#pragma warning restore 1591
