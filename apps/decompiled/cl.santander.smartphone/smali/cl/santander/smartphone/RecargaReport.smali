.class public Lcl/santander/smartphone/RecargaReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "RecargaReport.java"


# instance fields
.field bt_Volver:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field id:I

.field m_Data:Lcl/santander/smartphone/DataRecarga;

.field m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

.field m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

.field m_View:Landroid/view/View;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_cc:Landroid/widget/TextView;

.field tv_cod_transaccion:Landroid/widget/TextView;

.field tv_empresa:Landroid/widget/TextView;

.field tv_fecha:Landroid/widget/TextView;

.field tv_hora:Landroid/widget/TextView;

.field tv_info_mail:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_phone:Landroid/widget/TextView;

.field tv_subtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/smartphone/DataRecarga;Lcl/santander/santanderCL/response/PagoRecargaResponse;)V
    .locals 1
    .param p1, "_itemProd"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "_data"    # Lcl/santander/smartphone/DataRecarga;
    .param p3, "_paymentResponse"    # Lcl/santander/santanderCL/response/PagoRecargaResponse;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 56
    iput-object p1, p0, Lcl/santander/smartphone/RecargaReport;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 57
    iput-object p2, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    .line 58
    iput-object p3, p0, Lcl/santander/smartphone/RecargaReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 60
    return-void
.end method


# virtual methods
.method public initScreen()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602c3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_subtitle:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v2, v2, Lcl/santander/smartphone/DataRecarga;->itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602d4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_info_mail:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_info_mail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v2, v2, Lcl/santander/smartphone/DataRecarga;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602d3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_monto:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602c5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_nombre:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602c7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_fecha:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602c9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_hora:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602cb

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_cod_transaccion:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602cd

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_cc:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602cf

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_empresa:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602d1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_phone:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_nombre:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_fecha:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getFecha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_hora:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getHora()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_cod_transaccion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoRecargaResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoRecargaResponse;->getNumeroTransaccion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_cc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_empresa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v1, v1, Lcl/santander/smartphone/DataRecarga;->itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v1, v1, Lcl/santander/smartphone/DataRecarga;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->tv_monto:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/smartphone/RecargaReport;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget v2, v2, Lcl/santander/smartphone/DataRecarga;->montoValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500eb

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/RecargaReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v2}, Lcl/santander/smartphone/RecargaReport;->setHasOptionsMenu(Z)V

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/RecargaReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602d5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->bt_Volver:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->bt_Volver:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/RecargaReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaReport$1;-><init>(Lcl/santander/smartphone/RecargaReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaReport;->initScreen()V

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaReport;->m_View:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 138
    :pswitch_0
    sput-boolean v1, Lcl/santander/smartphone/Global;->m_bCallInitialWSRecarga:Z

    .line 139
    sput-boolean v1, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 144
    iget-object v0, p0, Lcl/santander/smartphone/RecargaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
