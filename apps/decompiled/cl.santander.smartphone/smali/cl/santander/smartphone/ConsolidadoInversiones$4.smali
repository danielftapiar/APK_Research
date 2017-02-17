.class Lcl/santander/smartphone/ConsolidadoInversiones$4;
.super Ljava/lang/Object;
.source "ConsolidadoInversiones.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ConsolidadoInversiones;->loadProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/ConsolidadoInversiones;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/ConsolidadoInversiones$4;)Lcl/santander/smartphone/ConsolidadoInversiones;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    return-object v0
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 17
    .param p1, "groupPosition"    # I

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    check-cast v1, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 215
    .local v15, "grupo":Lcl/santander/santanderCL/data/MatrizInversiones;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 216
    .local v5, "s":[Ljava/lang/String;
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    # getter for: Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z
    invoke-static {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$2(Lcl/santander/smartphone/ConsolidadoInversiones;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->getFondosMutuos(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v16

    .line 222
    .local v16, "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    if-eqz v16, :cond_1

    .line 224
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$3(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 397
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v4, 0x7f05010d

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 232
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_0
    move-exception v12

    .line 233
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 235
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 236
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 238
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v14

    .line 239
    .local v14, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/ConsolidadoInversiones$4$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/ConsolidadoInversiones$4$1;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones$4;)V

    .line 251
    .local v13, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 252
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 260
    .end local v10    # "s_cert":[Ljava/lang/String;
    .end local v13    # "cert":Ljava/lang/Runnable;
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_3
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    # getter for: Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z
    invoke-static {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$4(Lcl/santander/smartphone/ConsolidadoInversiones;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 264
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->getDepositosPlazo(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v16

    .line 266
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    if-eqz v16, :cond_4

    .line 268
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$5(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 276
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_3
    move-exception v12

    .line 277
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 274
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v4, 0x7f05010d

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 279
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_4
    move-exception v12

    .line 280
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 282
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_5
    move-exception v14

    .line 283
    .restart local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/ConsolidadoInversiones$4$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/ConsolidadoInversiones$4$2;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones$4;)V

    .line 296
    .restart local v13    # "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 297
    .restart local v10    # "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 300
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 303
    .end local v10    # "s_cert":[Ljava/lang/String;
    .end local v13    # "cert":Ljava/lang/Runnable;
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_6
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    # getter for: Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z
    invoke-static {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$6(Lcl/santander/smartphone/ConsolidadoInversiones;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 307
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->getAPVs(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v16

    .line 309
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    if-eqz v16, :cond_7

    .line 311
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$7(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V

    .line 313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_3
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_0

    .line 319
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_6
    move-exception v12

    .line 320
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 317
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v4, 0x7f05010d

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_0

    .line 322
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_7
    move-exception v12

    .line 323
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 325
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_8
    move-exception v14

    .line 326
    .restart local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/ConsolidadoInversiones$4$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/ConsolidadoInversiones$4$3;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones$4;)V

    .line 339
    .restart local v13    # "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 340
    .restart local v10    # "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 343
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 346
    .end local v10    # "s_cert":[Ljava/lang/String;
    .end local v13    # "cert":Ljava/lang/Runnable;
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_9
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    # getter for: Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z
    invoke-static {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$8(Lcl/santander/smartphone/ConsolidadoInversiones;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 350
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->getAcciones(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v16

    .line 352
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    if-eqz v16, :cond_a

    .line 354
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$9(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_5
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_5 .. :try_end_5} :catch_b

    goto/16 :goto_0

    .line 362
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_9
    move-exception v12

    .line 363
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 360
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v4, 0x7f05010d

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_6
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_6 .. :try_end_6} :catch_b

    goto/16 :goto_0

    .line 365
    .end local v16    # "inv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :catch_a
    move-exception v12

    .line 366
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 368
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_b
    move-exception v14

    .line 369
    .restart local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/ConsolidadoInversiones$4$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/ConsolidadoInversiones$4$4;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones$4;)V

    .line 382
    .restart local v13    # "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 383
    .restart local v10    # "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 386
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 389
    .end local v10    # "s_cert":[Ljava/lang/String;
    .end local v13    # "cert":Ljava/lang/Runnable;
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :cond_c
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v15}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 393
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v2}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/ConsolidadoInversiones$4;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    const v4, 0x7f05010d

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/ConsolidadoInversiones;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
