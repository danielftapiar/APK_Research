.class final Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;
.super Ljava/lang/Object;
.source "ParaderoAppWidgetConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    .line 95
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->tmpDesde:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, "horDesde":I
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->tmpDesde:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 100
    .local v4, "minDesde":I
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->spnDuracion:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    .line 102
    .local v8, "duracion":I
    mul-int/lit8 v0, v2, 0x3c

    add-int v7, v0, v4

    .line 103
    .local v7, "desde":I
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->duraciones:[I

    aget v0, v0, v8

    add-int v9, v7, v0

    .line 108
    .local v9, "hasta":I
    const/16 v0, 0x5a0

    if-lt v9, v0, :cond_0

    add-int/lit16 v0, v9, -0x5a0

    div-int/lit8 v3, v0, 0x3c

    .line 109
    .local v3, "horHasta":I
    :goto_0
    rem-int/lit8 v5, v9, 0x3c

    .line 114
    .local v5, "minHasta":I
    if-gt v9, v7, :cond_1

    .line 115
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    .line 116
    const v1, 0x7f060185

    .line 115
    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    :goto_1
    return-void

    .line 108
    .end local v3    # "horHasta":I
    .end local v5    # "minHasta":I
    :cond_0
    div-int/lit8 v3, v9, 0x3c

    goto :goto_0

    .line 121
    .restart local v3    # "horHasta":I
    .restart local v5    # "minHasta":I
    :cond_1
    add-int/lit8 v0, v7, 0x3c

    if-le v9, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    .line 123
    const v1, 0x7f060186

    .line 122
    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->txtCodigo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->txtCodigo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "codigo":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 133
    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    .line 134
    const v1, 0x7f060187

    .line 133
    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 130
    .end local v6    # "codigo":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 139
    .restart local v6    # "codigo":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    .line 140
    const v1, 0x7f060193

    .line 139
    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    sput-boolean v12, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->trabajando:Z

    .line 144
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    # invokes: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->refrescaProgressBar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V

    .line 146
    new-instance v10, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    new-instance v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;-><init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;IIII)V

    invoke-direct {v10, v11, v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;-><init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    new-array v0, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://api.transantiagomaster.cl/paradero.php?par="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    invoke-virtual {v10, v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
