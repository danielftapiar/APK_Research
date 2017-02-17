.class public Lcl/santander/smartphone/localizador/DetallePoi;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DetallePoi.java"


# instance fields
.field private bt_como_llegar:Landroid/widget/Button;

.field private iv_poi_icon:Landroid/widget/ImageView;

.field private ll_estrella:Landroid/widget/LinearLayout;

.field private oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

.field private poi:Lcl/santander/santanderCL/data/response/ItemPOI;

.field private pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field root:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_detalle_divisor:Landroid/widget/TextView;

.field private tv_estrella_1:Landroid/widget/TextView;

.field private tv_estrella_2:Landroid/widget/TextView;

.field private tv_estrella_3:Landroid/widget/TextView;

.field private tv_poi_descripcion:Landroid/widget/TextView;

.field private tv_poi_dir:Landroid/widget/TextView;

.field private tv_poi_info:Landroid/widget/TextView;

.field private tv_poi_name:Landroid/widget/TextView;

.field private tv_poi_tel:Landroid/widget/TextView;

.field private wv_poi_oferta:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemPOI;Lcl/santander/santanderCL/data/response/ItemOferta;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 0
    .param p1, "_poi"    # Lcl/santander/santanderCL/data/response/ItemPOI;
    .param p2, "_oferta"    # Lcl/santander/santanderCL/data/response/ItemOferta;
    .param p3, "_pos"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 66
    iput-object p1, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 67
    iput-object p2, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    .line 68
    iput-object p3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/DetallePoi;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/DetallePoi;)Lcl/santander/santanderCL/data/response/ItemPOI;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    return-object v0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f0601ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->iv_poi_icon:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->ll_estrella:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_1:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_2:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_3:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_name:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_info:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_tel:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_dir:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f060209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_detalle_divisor:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f06020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_descripcion:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v1, 0x7f06020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->bt_como_llegar:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->bt_como_llegar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/DetallePoi$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/DetallePoi$1;-><init>(Lcl/santander/smartphone/localizador/DetallePoi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->ll_estrella:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_info:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_detalle_divisor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 151
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->ll_estrella:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_info:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_detalle_divisor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private rellenaDatos()V
    .locals 7

    .prologue
    const v5, 0x7f050137

    .line 158
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_tel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcl/santander/smartphone/localizador/DetallePoi;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemOferta;->getTelefono()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_descripcion:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemOferta;->getDescComercio()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_1:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_2:Landroid/widget/TextView;

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_estrella_3:Landroid/widget/TextView;

    iget-object v6, p0, Lcl/santander/smartphone/localizador/DetallePoi;->oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    invoke-virtual {v6}, Lcl/santander/santanderCL/data/response/ItemOferta;->getDescOferta()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcl/santander/smartphone/Utils;->formatearEstrellaOferta(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->iv_poi_icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_dir:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f050138

    invoke-virtual {p0, v5}, Lcl/santander/smartphone/localizador/DetallePoi;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_tel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcl/santander/smartphone/localizador/DetallePoi;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemPOI;->getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getTelefono()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_info:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getEstablecimiento()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getHorario()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 180
    if-nez v0, :cond_3

    .line 181
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_descripcion:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getHorario()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_info:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 184
    .restart local v0    # "i":I
    :cond_3
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v2, "tv_horario":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->tv_poi_descripcion:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getSucursal()Lcl/santander/santanderCL/data/response/ItemSucursal;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemSucursal;->getHorario()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    const v4, 0x7f06020a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 189
    .local v1, "ll_horarios":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->root:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTheme(I)V

    .line 90
    iput-object p0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 91
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/DetallePoi;->setHasOptionsMenu(Z)V

    .line 95
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->initComponents()V

    .line 97
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->rellenaDatos()V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    .line 206
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 208
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iget-boolean v0, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-nez v0, :cond_0

    .line 210
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 217
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 218
    return-void

    .line 214
    :cond_0
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    .line 222
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 285
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 226
    :sswitch_0
    new-instance v7, Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v7, v0, v9, v11}, Lcl/santander/smartphone/SettingsDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    .local v7, "sd":Lcl/santander/smartphone/SettingsDialog;
    invoke-virtual {v7}, Lcl/santander/smartphone/SettingsDialog;->show()V

    goto :goto_0

    .line 230
    .end local v7    # "sd":Lcl/santander/smartphone/SettingsDialog;
    :sswitch_1
    new-instance v6, Lcl/santander/smartphone/localizador/DetallePoi$2;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/localizador/DetallePoi$2;-><init>(Lcl/santander/smartphone/localizador/DetallePoi;)V

    .line 275
    .local v6, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 276
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f050012

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v5}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0500c4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v10

    aput-object v11, v5, v9

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 281
    .end local v4    # "buttons":[Ljava/lang/String;
    .end local v6    # "ok":Ljava/lang/Runnable;
    :sswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setResult(I)V

    .line 282
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    goto/16 :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f06038b -> :sswitch_0
        0x7f06038c -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 290
    new-instance v7, Lcl/santander/smartphone/localizador/DetallePoi$3;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/localizador/DetallePoi$3;-><init>(Lcl/santander/smartphone/localizador/DetallePoi;)V

    .line 300
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 301
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetallePoi;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetallePoi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050168

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 303
    .local v6, "d":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 306
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 307
    return-void
.end method
