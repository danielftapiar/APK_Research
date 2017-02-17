.class public Lcl/santander/smartphone/Ayuda;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Ayuda.java"


# instance fields
.field bt_emergencias:Landroid/widget/Button;

.field bt_llamar_bloqueo1:Landroid/widget/Button;

.field bt_llamar_bloqueo2:Landroid/widget/Button;

.field bt_llamar_extranjero:Landroid/widget/Button;

.field bt_llamar_norecon1:Landroid/widget/Button;

.field bt_llamar_norecon2:Landroid/widget/Button;

.field bt_servicio_cliente:Landroid/widget/Button;

.field ly_boton_ea_eeuu:Landroid/widget/LinearLayout;

.field ly_boton_ea_otros:Landroid/widget/LinearLayout;

.field ly_boton_mc_eeuu:Landroid/widget/LinearLayout;

.field ly_boton_mc_india:Landroid/widget/LinearLayout;

.field ly_boton_mc_otros:Landroid/widget/LinearLayout;

.field ly_boton_visa_eeuu:Landroid/widget/LinearLayout;

.field ly_boton_visa_otros:Landroid/widget/LinearLayout;

.field root:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_ae_eeuu:Landroid/widget/TextView;

.field tv_ae_otros:Landroid/widget/TextView;

.field tv_americanexpress:Landroid/widget/TextView;

.field tv_bloqueo_tarjetas:Landroid/widget/TextView;

.field tv_compras_no_reconocidas_texto:Landroid/widget/TextView;

.field tv_desde_extranjero_texto:Landroid/widget/TextView;

.field tv_emergencias_bancarias:Landroid/widget/TextView;

.field tv_emergencias_texto:Landroid/widget/TextView;

.field tv_horarios:Landroid/widget/TextView;

.field tv_llamar_bloqueo:Landroid/widget/TextView;

.field tv_llamar_no_reconocidas:Landroid/widget/TextView;

.field tv_mastercard:Landroid/widget/TextView;

.field tv_mc_eeuu:Landroid/widget/TextView;

.field tv_mc_india:Landroid/widget/TextView;

.field tv_mc_otros:Landroid/widget/TextView;

.field tv_no_pago_cheques:Landroid/widget/TextView;

.field tv_num_ae_eeuu:Landroid/widget/TextView;

.field tv_num_ae_otros:Landroid/widget/TextView;

.field tv_num_mc_eeuu:Landroid/widget/TextView;

.field tv_num_mc_india:Landroid/widget/TextView;

.field tv_num_mc_otros:Landroid/widget/TextView;

.field tv_num_visa_eeuu:Landroid/widget/TextView;

.field tv_num_visa_otros:Landroid/widget/TextView;

.field tv_o_nums_emergencia:Landroid/widget/TextView;

.field tv_servicio_cliente:Landroid/widget/TextView;

.field tv_visa:Landroid/widget/TextView;

.field tv_visa_eeuu:Landroid/widget/TextView;

.field tv_visa_otros:Landroid/widget/TextView;

.field tv_vox:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private addListeners()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_servicio_cliente:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$1;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_emergencias:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$2;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo1:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$3;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo2:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$4;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_extranjero:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$5;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon1:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$6;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$6;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon2:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Ayuda$7;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$7;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_eeuu:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$8;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$8;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_india:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$9;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$9;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_otros:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$10;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$10;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_visa_eeuu:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$11;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$11;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_visa_otros:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$12;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$12;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_ea_eeuu:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$13;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$13;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_ea_otros:Landroid/widget/LinearLayout;

    new-instance v1, Lcl/santander/smartphone/Ayuda$14;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ayuda$14;-><init>(Lcl/santander/smartphone/Ayuda;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_ae_eeuu:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_ae_otros:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_bloqueo_tarjetas:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_compras_no_reconocidas_texto:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_desde_extranjero_texto:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_emergencias_bancarias:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_emergencias_texto:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_horarios:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_llamar_bloqueo:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_llamar_no_reconocidas:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mastercard:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_eeuu:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_india:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_otros:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_no_pago_cheques:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_ae_eeuu:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_ae_otros:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_mc_eeuu:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_mc_india:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_mc_otros:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_visa_eeuu:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_o_nums_emergencia:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_servicio_cliente:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa_eeuu:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa_otros:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_num_visa_otros:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_americanexpress:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_vox:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_emergencias:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo1:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo2:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_extranjero:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon1:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon2:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_servicio_cliente:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_ea_eeuu:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_ea_otros:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_eeuu:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_india:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_mc_otros:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_visa_eeuu:Landroid/widget/LinearLayout;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/Ayuda;->ly_boton_visa_otros:Landroid/widget/LinearLayout;

    .line 128
    invoke-direct {p0}, Lcl/santander/smartphone/Ayuda;->setTypefaces()V

    .line 130
    invoke-direct {p0}, Lcl/santander/smartphone/Ayuda;->addListeners()V

    .line 131
    return-void
.end method

.method private setTypefaces()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_ae_eeuu:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 292
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_ae_otros:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_eeuu:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_india:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mc_otros:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 296
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa_eeuu:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 297
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa_otros:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_visa:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 299
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_mastercard:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 300
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_americanexpress:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 302
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_bloqueo_tarjetas:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 303
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_llamar_bloqueo:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 304
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_compras_no_reconocidas_texto:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_llamar_no_reconocidas:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 306
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_desde_extranjero_texto:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 307
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_emergencias_bancarias:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 308
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_emergencias_texto:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 309
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_no_pago_cheques:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 310
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_horarios:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_o_nums_emergencia:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_servicio_cliente:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->tv_vox:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_emergencias:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 316
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo1:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_bloqueo2:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_extranjero:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon1:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 320
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_llamar_norecon2:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 321
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->bt_servicio_cliente:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcl/santander/smartphone/Ayuda;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0}, Lcl/santander/smartphone/Ayuda;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ayuda;->root:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcl/santander/smartphone/Ayuda;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 67
    iget-object v1, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTheme(I)V

    .line 68
    iput-object p0, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 69
    const/4 v1, 0x0

    iget-object v2, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Ayuda;->setHasOptionsMenu(Z)V

    .line 73
    invoke-virtual {p0}, Lcl/santander/smartphone/Ayuda;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 74
    iget-object v1, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ayuda;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 76
    invoke-direct {p0}, Lcl/santander/smartphone/Ayuda;->initComponents()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    .line 328
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 330
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iget-boolean v0, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-nez v0, :cond_0

    .line 332
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 339
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 340
    return-void

    .line 336
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
    .line 54
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030016

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 431
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    .line 344
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 347
    :pswitch_0
    new-instance v7, Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v7, v0, v9, v11}, Lcl/santander/smartphone/SettingsDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 348
    .local v7, "sd":Lcl/santander/smartphone/SettingsDialog;
    invoke-virtual {v7}, Lcl/santander/smartphone/SettingsDialog;->show()V

    goto :goto_0

    .line 352
    .end local v7    # "sd":Lcl/santander/smartphone/SettingsDialog;
    :pswitch_1
    new-instance v6, Lcl/santander/smartphone/Ayuda$15;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/Ayuda$15;-><init>(Lcl/santander/smartphone/Ayuda;)V

    .line 395
    .local v6, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 396
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

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

    iget-object v5, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

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

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x7f06038b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 409
    new-instance v7, Lcl/santander/smartphone/Ayuda$16;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/Ayuda$16;-><init>(Lcl/santander/smartphone/Ayuda;)V

    .line 419
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 420
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Ayuda;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/Ayuda;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050168

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 422
    .local v6, "dialogo":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 425
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 426
    return-void
.end method
