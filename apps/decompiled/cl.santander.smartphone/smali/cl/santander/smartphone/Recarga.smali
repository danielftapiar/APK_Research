.class public Lcl/santander/smartphone/Recarga;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Recarga.java"


# instance fields
.field bt_Aceptar:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field et_Email:Landroid/widget/EditText;

.field et_Monto:Landroid/widget/EditText;

.field et_Numero:Landroid/widget/EditText;

.field id:I

.field m_FormView:Landroid/view/View;

.field m_Operadoras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemOperadora;",
            ">;"
        }
    .end annotation
.end field

.field m_RecargaFormLayout:Landroid/widget/LinearLayout;

.field m_SpinnerMontoRecarga:Landroid/widget/Spinner;

.field m_SpinnerOperadores:Landroid/widget/Spinner;

.field m_bFormVisible:Z

.field m_bInputModeSpinner:Z

.field m_iCurrentOperador:I

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_instrucciones:Landroid/widget/TextView;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;I)V
    .locals 0
    .param p1, "cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "id"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 65
    iput-object p1, p0, Lcl/santander/smartphone/Recarga;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 66
    iput p2, p0, Lcl/santander/smartphone/Recarga;->id:I

    .line 67
    return-void
.end method

.method private initForm()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f0602a1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerOperadores:Landroid/widget/Spinner;

    .line 234
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f0602a2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->m_RecargaFormLayout:Landroid/widget/LinearLayout;

    .line 235
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 236
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    .line 237
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Numero:Landroid/widget/EditText;

    .line 238
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    .line 239
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Email:Landroid/widget/EditText;

    .line 240
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->tv_instrucciones:Landroid/widget/TextView;

    .line 241
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    .line 243
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Numero:Landroid/widget/EditText;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->et_Email:Landroid/widget/EditText;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 246
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 248
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->tv_instrucciones:Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->m_FormView:Landroid/view/View;

    const v2, 0x7f0602ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcl/santander/smartphone/Recarga;->m_bFormVisible:Z

    .line 256
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602a0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 219
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 220
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Recarga;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/Recarga;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 226
    return-void
.end method

.method public initSpinner()V
    .locals 6

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "SpinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v4, 0x7f050069

    invoke-virtual {p0, v4}, Lcl/santander/smartphone/Recarga;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v4, p0, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 176
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x1090008

    invoke-direct {v1, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 177
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 178
    iget-object v4, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerOperadores:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 180
    iget-object v4, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerOperadores:Landroid/widget/Spinner;

    new-instance v5, Lcl/santander/smartphone/Recarga$3;

    invoke-direct {v5, p0}, Lcl/santander/smartphone/Recarga$3;-><init>(Lcl/santander/smartphone/Recarga;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 216
    return-void

    .line 172
    .end local v1    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemOperadora;

    .line 173
    .local v3, "operador":Lcl/santander/santanderCL/data/response/ItemOperadora;
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public loadOperadoras()V
    .locals 15

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Ok"

    aput-object v1, v4, v0

    .line 80
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->RecargaGetListaOperadores(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v14

    .line 82
    .local v14, "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemOperadora;>;"
    if-eqz v14, :cond_0

    .line 83
    iput-object v14, p0, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->initSpinner()V

    .line 115
    .end local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemOperadora;>;"
    :goto_0
    return-void

    .line 87
    .restart local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemOperadora;>;"
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 89
    .end local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemOperadora;>;"
    :catch_0
    move-exception v11

    .line 90
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 92
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v11

    .line 93
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 95
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v13

    .line 96
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/Recarga$1;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/Recarga$1;-><init>(Lcl/santander/smartphone/Recarga;)V

    .line 109
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 110
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v12, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 113
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v12, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 312
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 313
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500ea

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/Recarga;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Recarga;->setHasOptionsMenu(Z)V

    .line 316
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602a3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    .line 317
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_black:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->bt_Aceptar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Recarga$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Recarga$4;-><init>(Lcl/santander/smartphone/Recarga;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-direct {p0}, Lcl/santander/smartphone/Recarga;->initForm()V

    .line 357
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->initPageAdapter()V

    .line 359
    sget-boolean v0, Lcl/santander/smartphone/Global;->m_bCallInitialWSRecarga:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/Recarga$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Recarga$5;-><init>(Lcl/santander/smartphone/Recarga;)V

    .line 366
    const-wide/16 v2, 0x32

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 374
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setInputMonto(I)V
    .locals 9
    .param p1, "_idOperador"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 118
    iput p1, p0, Lcl/santander/smartphone/Recarga;->m_iCurrentOperador:I

    .line 120
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    iget v6, p0, Lcl/santander/smartphone/Recarga;->m_iCurrentOperador:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemOperadora;

    .line 122
    .local v4, "operador":Lcl/santander/santanderCL/data/response/ItemOperadora;
    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getMontos()[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "Montos":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iput-boolean v7, p0, Lcl/santander/smartphone/Recarga;->m_bInputModeSpinner:Z

    .line 164
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcl/santander/smartphone/Recarga;->m_bInputModeSpinner:Z

    .line 135
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "SpinnerArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 144
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v2, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 145
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 146
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 148
    iget-object v5, p0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    new-instance v6, Lcl/santander/smartphone/Recarga$2;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/Recarga$2;-><init>(Lcl/santander/smartphone/Recarga;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 141
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    aget-object v5, v0, v3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public validaCampos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "_number"    # Ljava/lang/String;
    .param p2, "_monto"    # Ljava/lang/String;
    .param p3, "_email"    # Ljava/lang/String;
    .param p4, "nombreOperadora"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x4e20

    const/4 v5, 0x0

    const v2, 0x7f05013c

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 259
    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "Ok"

    aput-object v0, v4, v8

    .line 261
    .local v4, "s":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f05013e

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 302
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    const/4 v7, 0x0

    .line 269
    .local v7, "montoValue":I
    :try_start_0
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 276
    if-nez v7, :cond_2

    .line 277
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f05013f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 278
    goto :goto_0

    .line 271
    :catch_0
    move-exception v6

    .line 272
    .local v6, "_e":Ljava/lang/Exception;
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f05013f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 273
    goto :goto_0

    .line 282
    .end local v6    # "_e":Ljava/lang/Exception;
    :cond_2
    const-string v0, "Movistar"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    const/16 v0, 0x3e8

    if-lt v7, v0, :cond_3

    if-le v7, v9, :cond_6

    .line 285
    :cond_3
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f050140

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 286
    goto :goto_0

    .line 288
    :cond_4
    const-string v0, "Movistar (Banda Ancha)"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    const/16 v0, 0x5dc

    if-lt v7, v0, :cond_5

    if-le v7, v9, :cond_6

    .line 290
    :cond_5
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f050141

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 291
    goto/16 :goto_0

    .line 297
    :cond_6
    invoke-static {p3}, Lcl/santander/smartphone/Utils;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcl/santander/smartphone/Recarga;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Recarga;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f050142

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v3, v8

    .line 299
    goto/16 :goto_0
.end method
