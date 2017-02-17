.class public Lcl/santander/smartphone/InversionesDepositosInvertir;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosInvertir.java"


# static fields
.field private static tipo_reaj:I


# instance fields
.field ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

.field bt_simular:Landroid/widget/Button;

.field depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

.field et_monto:Landroid/widget/EditText;

.field et_plazo:Landroid/widget/EditText;

.field ly_tipo_deposito:Landroid/widget/LinearLayout;

.field ly_tipo_reajuste:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field monto:Ljava/lang/String;

.field plazo:Ljava/lang/String;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field sp_tipo_deposito:Landroid/widget/Spinner;

.field sp_tipo_reajuste:Landroid/widget/Spinner;

.field tiposAjuste:[Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

.field tiposDeposito:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v0, -0x1

    sput v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tipo_reaj:I

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 66
    sput p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tipo_reaj:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tipo_reaj:I

    return v0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 107
    new-array v0, v1, [Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposDeposito:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    .line 108
    new-array v0, v1, [Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposAjuste:[Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposDeposito:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->FIJO:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    aput-object v1, v0, v2

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposAjuste:[Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->UDF:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    aput-object v1, v0, v2

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposDeposito:[Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;->RENOVABLE:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    aput-object v1, v0, v3

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->tiposAjuste:[Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->PESOS:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    aput-object v1, v0, v3

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->ly_tipo_deposito:Landroid/widget/LinearLayout;

    .line 117
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ac

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->ly_tipo_reajuste:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->et_monto:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->et_plazo:Landroid/widget/EditText;

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->bt_simular:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ab

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_deposito:Landroid/widget/Spinner;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ae

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->bt_simular:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->bt_simular:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosInvertir$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosInvertir$1;-><init>(Lcl/santander/smartphone/InversionesDepositosInvertir;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-void
.end method

.method private loadSpinners()V
    .locals 5

    .prologue
    const v4, 0x7f030064

    .line 171
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 172
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 173
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 177
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesDepositosInvertir$2;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesDepositosInvertir$2;-><init>(Lcl/santander/smartphone/InversionesDepositosInvertir;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 194
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 195
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 196
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_deposito:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 200
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_deposito:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesDepositosInvertir$3;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesDepositosInvertir$3;-><init>(Lcl/santander/smartphone/InversionesDepositosInvertir;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 86
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->setHasOptionsMenu(Z)V

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->initComponents()V

    .line 98
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosInvertir;->loadSpinners()V

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const v0, 0x7f03003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->m_View:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 238
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
