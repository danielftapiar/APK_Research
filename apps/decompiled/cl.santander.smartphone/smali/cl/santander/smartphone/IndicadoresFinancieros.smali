.class public Lcl/santander/smartphone/IndicadoresFinancieros;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "IndicadoresFinancieros.java"


# static fields
.field private static final BT_ALZA:I = 0x1

.field private static final BT_BAJA:I = 0x2

.field private static final BT_DIA:I


# instance fields
.field private boton_marcado:I

.field private bt_alzas:Landroid/widget/Button;

.field private bt_bajas:Landroid/widget/Button;

.field private bt_dia:Landroid/widget/Button;

.field private buttons:[Landroid/widget/Button;

.field private ly_tasas:Landroid/widget/LinearLayout;

.field private mIndAlza:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation
.end field

.field private mIndBaja:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation
.end field

.field private mIndDia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation
.end field

.field private mTasa30:Ljava/lang/String;

.field private mTasa90:Ljava/lang/String;

.field private root:Landroid/view/View;

.field private sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field private sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private sfm:Landroid/support/v4/app/FragmentManager;

.field private tl_tabla:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 54
    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndDia:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndAlza:Ljava/util/ArrayList;

    .line 56
    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndBaja:Ljava/util/ArrayList;

    .line 57
    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa30:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa90:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/IndicadoresFinancieros;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcl/santander/smartphone/IndicadoresFinancieros;->selectButton(I)V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/IndicadoresFinancieros;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method private borraTabla()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 326
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->tl_tabla:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 331
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->tl_tabla:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method private cargarIndicadores()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 153
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 156
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->IndicadoresFinancieros(Landroid/app/Activity;)Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;

    move-result-object v13

    .line 160
    .local v13, "resp":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    if-eqz v13, :cond_0

    .line 162
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getIndicadoresDia()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndDia:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getIndicadoresAlza()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndAlza:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getIndicadoresBaja()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndBaja:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getTasaCapatacion30()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa30:Ljava/lang/String;

    .line 166
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;->getTasaCapatacion90()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa90:Ljava/lang/String;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 201
    .end local v13    # "resp":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    :goto_0
    invoke-direct {p0, v14}, Lcl/santander/smartphone/IndicadoresFinancieros;->selectButton(I)V

    .line 202
    return-void

    .line 172
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 175
    .end local v13    # "resp":Lcl/santander/santanderCL/response/IndicadoresEconomicosResponse;
    :catch_0
    move-exception v12

    .line 176
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 178
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 179
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 182
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 183
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/IndicadoresFinancieros$4;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/IndicadoresFinancieros$4;-><init>(Lcl/santander/smartphone/IndicadoresFinancieros;)V

    .line 194
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 195
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v5, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 198
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private crearFilaTabla(ILcl/santander/santanderCL/data/response/ItemIndicador;)V
    .locals 11
    .param p1, "posicion"    # I
    .param p2, "datos"    # Lcl/santander/santanderCL/data/response/ItemIndicador;

    .prologue
    .line 213
    iget-object v8, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 214
    const-string v9, "layout_inflater"

    .line 213
    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 216
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f03002e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 218
    .local v5, "row":Landroid/widget/TableRow;
    rem-int/lit8 v8, p1, 0x2

    if-nez v8, :cond_4

    .line 219
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 223
    :goto_0
    iget-object v8, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8, v5}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    const v8, 0x7f0600c7

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    .local v0, "day":Landroid/widget/TextView;
    const v8, 0x7f0600c6

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 227
    .local v3, "month":Landroid/widget/TextView;
    const v8, 0x7f0600c8

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    .local v4, "name":Landroid/widget/TextView;
    const v8, 0x7f0600c9

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 229
    .local v6, "valor":Landroid/widget/TextView;
    const v8, 0x7f0600ca

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 231
    .local v7, "var":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getFecha()Ljava/util/Date;

    move-result-object v1

    .line 233
    .local v1, "fecha":Ljava/util/Date;
    if-eqz v1, :cond_5

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v8

    invoke-static {v8}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getIndicador()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getValor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getVariacion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getIndicador()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getIndicador()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IPC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v9

    add-int/lit16 v9, v9, 0x76c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getVariacion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 254
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getVariacion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 255
    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getValor()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 267
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getValor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    .line 268
    const/high16 v8, -0x10000

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    :cond_3
    :goto_3
    iget-object v8, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->tl_tabla:Landroid/widget/TableLayout;

    invoke-virtual {v8, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 280
    return-void

    .line 221
    .end local v0    # "day":Landroid/widget/TextView;
    .end local v1    # "fecha":Ljava/util/Date;
    .end local v3    # "month":Landroid/widget/TextView;
    .end local v4    # "name":Landroid/widget/TextView;
    .end local v6    # "valor":Landroid/widget/TextView;
    .end local v7    # "var":Landroid/widget/TextView;
    :cond_4
    const v8, -0x222223

    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 240
    .restart local v0    # "day":Landroid/widget/TextView;
    .restart local v1    # "fecha":Ljava/util/Date;
    .restart local v3    # "month":Landroid/widget/TextView;
    .restart local v4    # "name":Landroid/widget/TextView;
    .restart local v6    # "valor":Landroid/widget/TextView;
    .restart local v7    # "var":Landroid/widget/TextView;
    :cond_5
    const-string v8, "-"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const-string v8, "-"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 257
    :cond_6
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 260
    :cond_7
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getVariacion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 262
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 270
    :cond_8
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 273
    :cond_9
    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemIndicador;->getValor()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 275
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method private initComponents()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_dia:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_alzas:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    const v1, 0x7f0600be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_bajas:Landroid/widget/Button;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_dia:Landroid/widget/Button;

    aput-object v1, v0, v2

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_alzas:Landroid/widget/Button;

    aput-object v1, v0, v3

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->bt_bajas:Landroid/widget/Button;

    aput-object v1, v0, v4

    .line 115
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v2

    new-instance v1, Lcl/santander/smartphone/IndicadoresFinancieros$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/IndicadoresFinancieros$1;-><init>(Lcl/santander/smartphone/IndicadoresFinancieros;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v3

    new-instance v1, Lcl/santander/smartphone/IndicadoresFinancieros$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/IndicadoresFinancieros$2;-><init>(Lcl/santander/smartphone/IndicadoresFinancieros;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v4

    new-instance v1, Lcl/santander/smartphone/IndicadoresFinancieros$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/IndicadoresFinancieros$3;-><init>(Lcl/santander/smartphone/IndicadoresFinancieros;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    const v1, 0x7f0600bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->tl_tabla:Landroid/widget/TableLayout;

    .line 144
    invoke-direct {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->cargarIndicadores()V

    .line 145
    return-void
.end method

.method private rellenaTabla(I)V
    .locals 4
    .param p1, "button"    # I

    .prologue
    const/16 v3, 0x8

    .line 341
    invoke-direct {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->borraTabla()V

    .line 343
    const/4 v1, 0x0

    .line 345
    .local v1, "indicadores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemIndicador;>;"
    packed-switch p1, :pswitch_data_0

    .line 362
    :goto_0
    if-eqz v1, :cond_0

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 370
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 348
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndDia:Ljava/util/ArrayList;

    .line 349
    invoke-direct {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->rellenaTasas()V

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndAlza:Ljava/util/ArrayList;

    .line 353
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mIndBaja:Ljava/util/ArrayList;

    .line 357
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 366
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemIndicador;

    invoke-direct {p0, v0, v2}, Lcl/santander/smartphone/IndicadoresFinancieros;->crearFilaTabla(ILcl/santander/santanderCL/data/response/ItemIndicador;)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rellenaTasas()V
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    const v3, 0x7f0600ce

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    .local v0, "tv_30":Landroid/widget/TextView;
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->ly_tasas:Landroid/widget/LinearLayout;

    const v3, 0x7f0600d0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    .local v1, "tv_90":Landroid/widget/TextView;
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa30:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v2, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->mTasa90:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method private selectButton(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 318
    return-void

    .line 305
    :cond_0
    if-ne v0, p1, :cond_1

    .line 307
    iput v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->boton_marcado:I

    .line 308
    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 311
    invoke-direct {p0, v0}, Lcl/santander/smartphone/IndicadoresFinancieros;->rellenaTabla(I)V

    .line 303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->buttons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 72
    sput-boolean v4, Lcl/santander/smartphone/Global;->indicadores:Z

    .line 74
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    .line 80
    iput-object p0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 85
    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, v4}, Lcl/santander/smartphone/IndicadoresFinancieros;->setHasOptionsMenu(Z)V

    .line 97
    invoke-direct {p0}, Lcl/santander/smartphone/IndicadoresFinancieros;->initComponents()V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 392
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 375
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/IndicadoresFinancieros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
