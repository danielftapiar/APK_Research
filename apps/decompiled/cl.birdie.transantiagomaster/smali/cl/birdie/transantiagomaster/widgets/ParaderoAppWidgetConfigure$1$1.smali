.class final Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;
.super Ljava/lang/Object;
.source "ParaderoAppWidgetConfigure.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

.field private final synthetic val$horDesde:I

.field private final synthetic val$horHasta:I

.field private final synthetic val$minDesde:I

.field private final synthetic val$minHasta:I


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;IIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    iput p2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$horDesde:I

    iput p3, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$horHasta:I

    iput p4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$minDesde:I

    iput p5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$minHasta:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->trabajando:Z

    .line 185
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v0

    # invokes: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->refrescaProgressBar()V
    invoke-static {v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V

    .line 187
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v0

    .line 188
    const v1, 0x7f060187

    .line 189
    const/4 v2, 0x1

    .line 187
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 150
    const/4 v4, 0x0

    sput-boolean v4, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->trabajando:Z

    .line 152
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    # invokes: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->refrescaProgressBar()V
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;)V

    move-object v1, p1

    .line 154
    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 156
    .local v1, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    new-instance v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;-><init>()V

    .line 157
    .local v2, "pw":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    iput-object v1, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 158
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    iget v4, v4, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    iput v4, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->widgetId:I

    .line 159
    iget v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$horDesde:I

    iput v4, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaDesde:I

    .line 160
    iget v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$horHasta:I

    iput v4, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaHasta:I

    .line 161
    iget v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$minDesde:I

    iput v4, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minDesde:I

    .line 162
    iget v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->val$minHasta:I

    iput v4, v2, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minHasta:I

    .line 164
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v4, v4, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 168
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 170
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v5

    iget v5, v5, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    invoke-static {v4, v5, v0}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->buildRemoteView(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)Landroid/widget/RemoteViews;

    .line 173
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v3, "resultValue":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    .line 175
    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v5}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v5

    iget v5, v5, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->widgetId:I

    .line 174
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 178
    iget-object v4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1$1;->this$1:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;

    # getter for: Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
    invoke-static {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;->access$0(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$1;)Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    move-result-object v4

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;->finish()V

    .line 179
    return-void
.end method
