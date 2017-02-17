.class public Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "ParaderoAppWidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;
    }
.end annotation


# static fields
.field static volatile trabajando:Z


# instance fields
.field final duraciones:[I

.field spnDuracion:Landroid/widget/Spinner;

.field tmpDesde:Landroid/widget/TimePicker;

.field txtCodigo:Landroid/widget/EditText;

.field widgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->trabajando:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->duraciones:[I

    .line 28
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0xf
        0x1e
        0x2d
        0x3c
    .end array-data
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->refrescaProgressBar()V

    return-void
.end method

.method private refrescaProgressBar()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->trabajando:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setProgressBarIndeterminateVisibility(Z)V

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 47
    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setTheme(I)V

    .line 48
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x7f060194

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setTitle(I)V

    .line 52
    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->requestWindowFeature(J)V

    .line 53
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->refrescaProgressBar()V

    .line 55
    const v2, 0x7f030049

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setContentView(I)V

    .line 57
    const v2, 0x7f080117

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->txtCodigo:Landroid/widget/EditText;

    .line 58
    const v2, 0x7f080118

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->tmpDesde:Landroid/widget/TimePicker;

    .line 61
    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->tmpDesde:Landroid/widget/TimePicker;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 62
    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->tmpDesde:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 64
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->spnDuracion:Landroid/widget/Spinner;

    .line 67
    const v2, 0x7f0d0005

    .line 68
    const v3, 0x1090008

    .line 66
    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->spnDuracion:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 71
    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->spnDuracion:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 76
    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 81
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    .line 85
    :cond_0
    iget v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->finish()V

    .line 89
    :cond_1
    const v2, 0x7f0800b6

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 90
    new-instance v3, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;-><init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method
