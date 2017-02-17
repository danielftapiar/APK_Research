.class final Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;
.super Landroid/os/AsyncTask;
.source "ParaderoAppWidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescargadorParadero"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field final synthetic this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0
    .param p2, "ifbCallback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 205
    iput-object p1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->this$0:Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 206
    iput-object p2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 207
    return-void
.end method

.method private static varargs doInBackground([Ljava/lang/String;)[B
    .locals 4
    .param p0, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 212
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Lcl/birdie/toolkit/DescargarArchivo;->descargar(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ParaderoAppWidgetConfigure"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "excepcion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1
    check-cast p1, [B

    if-nez p1, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v7}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/me/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/me/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "lat"

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "lng"

    invoke-virtual {v0, v3}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "codparadero"

    invoke-virtual {v0, v5}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "textoparadero"

    invoke-virtual {v0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct/range {v0 .. v6}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetConfigure$DescargadorParadero;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v7}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method
