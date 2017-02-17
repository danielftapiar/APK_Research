.class final Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;
.super Ljava/lang/Object;
.source "ParaderoAppWidgetProvider.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->buildRemoteView(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appWidgetId:I

.field private final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$hora:I

.field private final synthetic val$min:I

.field private final synthetic val$views:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(IILandroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$hora:I

    iput p2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$min:I

    iput-object p3, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput p5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetId:I

    iput-object p6, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$context:Landroid/content/Context;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 274
    const-string v0, "ParaderoAppWidgetProvider"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    .line 276
    const v1, 0x7f0800f7

    .line 277
    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$context:Landroid/content/Context;

    const v3, 0x7f060188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v1, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetId:I

    iget-object v2, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 279
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 13
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v12, 0x8

    const/4 v5, 0x0

    .line 238
    move-object v1, p1

    check-cast v1, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    .line 244
    .local v1, "h":Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$hora:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$min:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "mensaje":Ljava/lang/String;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    const v7, 0x7f0800f7

    invoke-virtual {v6, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 249
    if-nez v1, :cond_0

    .line 250
    const-string v5, "ParaderoAppWidgetProvider"

    const-string v6, "handler es null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v6, v1, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    if-nez v6, :cond_1

    .line 252
    const-string v5, "ParaderoAppWidgetProvider"

    const-string v6, "tiempos es null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    .line 255
    .local v0, "cnt":I
    iget-object v7, v1, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    array-length v8, v7

    move v6, v5

    .line 261
    :goto_1
    if-lt v6, v8, :cond_3

    .line 263
    :cond_2
    move v2, v0

    .local v2, "i":I
    :goto_2
    sget-object v5, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    array-length v5, v5

    if-lt v2, v5, :cond_5

    .line 267
    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 268
    iget v6, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$appWidgetId:I

    iget-object v7, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v6, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 255
    .end local v2    # "i":I
    :cond_3
    aget-object v4, v7, v6

    .line 256
    .local v4, "t":Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    sget-object v9, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    aget v9, v9, v0

    iget-object v10, v4, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    iget-object v9, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    sget-object v5, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->tiempos:[I

    aget v10, v5, v0

    .line 258
    iget v5, v4, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->codigoRespuesta:I

    iget-object v11, v4, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    if-nez v11, :cond_4

    const/16 v5, 0xc

    :cond_4
    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v11, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v4, v11}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->shortFormatTiempo(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ", "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v11, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v4, v11}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->shortFormatTiempo(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 257
    :goto_3
    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    sget-object v5, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    array-length v5, v5

    if-eq v0, v5, :cond_2

    .line 261
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 258
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "~ "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " min"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :pswitch_1
    const-string v5, "no hay bus"

    goto :goto_3

    :pswitch_2
    const-string v5, "fuera horario"

    goto :goto_3

    :pswitch_3
    const-string v5, "no disponible"

    goto :goto_3

    .line 264
    .end local v4    # "t":Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    .restart local v2    # "i":I
    :cond_5
    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    sget-object v6, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 265
    iget-object v5, p0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;->val$views:Landroid/widget/RemoteViews;

    sget-object v6, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->tiempos:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
