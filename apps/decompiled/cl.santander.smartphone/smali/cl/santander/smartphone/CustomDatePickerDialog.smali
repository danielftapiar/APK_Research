.class public Lcl/santander/smartphone/CustomDatePickerDialog;
.super Landroid/app/Dialog;
.source "CustomDatePickerDialog.java"


# static fields
.field public static final SELECCION_DESDE:I = 0x0

.field public static final SELECCION_HASTA:I = 0x1


# instance fields
.field private bt_cancelar:Landroid/widget/Button;

.field private bt_ok:Landroid/widget/Button;

.field private bt_ultimos:Landroid/widget/Button;

.field private cancelable:Z

.field private ctx:Landroid/content/Context;

.field private dp_fecha:Landroid/widget/DatePicker;

.field public dpd:Lcl/santander/smartphone/CustomDatePickerDialog;

.field private tipoSeleccion:I

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "tipoSeleccion"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->setContentView(I)V

    .line 40
    iput-object p1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->ctx:Landroid/content/Context;

    .line 41
    iput-object p0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dpd:Lcl/santander/smartphone/CustomDatePickerDialog;

    .line 43
    iput p4, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->tipoSeleccion:I

    .line 45
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->initComponents()V

    .line 48
    invoke-direct {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->setTitulo()V

    .line 49
    return-void
.end method

.method private initComponents()V
    .locals 6

    .prologue
    .line 54
    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dp_fecha:Landroid/widget/DatePicker;

    .line 55
    const v1, 0x7f060089

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_cancelar:Landroid/widget/Button;

    .line 56
    const v1, 0x7f06008a

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_ok:Landroid/widget/Button;

    .line 57
    const v1, 0x7f06008b

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_ultimos:Landroid/widget/Button;

    .line 58
    const v1, 0x7f060087

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->tv_title:Landroid/widget/TextView;

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dp_fecha:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 66
    return-void
.end method

.method private setTitulo()V
    .locals 3

    .prologue
    .line 70
    iget v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->tipoSeleccion:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->tv_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAnio()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dp_fecha:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->getAnio()I

    move-result v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->getMes()I

    move-result v2

    invoke-virtual {p0}, Lcl/santander/smartphone/CustomDatePickerDialog;->getDia()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 167
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getDia()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dp_fecha:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getMes()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->dp_fecha:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v0

    return v0
.end method

.method public setCancelListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "click"    # Ljava/lang/Runnable;

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_cancelar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/CustomDatePickerDialog$1;

    invoke-direct {v1, p0, p1}, Lcl/santander/smartphone/CustomDatePickerDialog$1;-><init>(Lcl/santander/smartphone/CustomDatePickerDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public setOkListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "click"    # Ljava/lang/Runnable;

    .prologue
    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_ok:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/CustomDatePickerDialog$2;

    invoke-direct {v1, p0, p1}, Lcl/santander/smartphone/CustomDatePickerDialog$2;-><init>(Lcl/santander/smartphone/CustomDatePickerDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public setUltimosListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "click"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/CustomDatePickerDialog;->bt_ultimos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/CustomDatePickerDialog$3;

    invoke-direct {v1, p0, p1}, Lcl/santander/smartphone/CustomDatePickerDialog$3;-><init>(Lcl/santander/smartphone/CustomDatePickerDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method
