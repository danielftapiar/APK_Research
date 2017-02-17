.class public Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ParaderoAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$WidgetService;
    }
.end annotation


# static fields
.field static final codigos:[I

.field static final tiempos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->tiempos:[I

    .line 52
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x7f0800f9
        0x7f0800fb
        0x7f0800fd
        0x7f0800ff
        0x7f080101
        0x7f080103
        0x7f080105
        0x7f080107
        0x7f080109
        0x7f08010b
        0x7f08010d
        0x7f08010f
        0x7f080111
        0x7f080113
        0x7f080115
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x7f0800fa
        0x7f0800fc
        0x7f0800fe
        0x7f080100
        0x7f080102
        0x7f080104
        0x7f080106
        0x7f080108
        0x7f08010a
        0x7f08010c
        0x7f08010e
        0x7f080110
        0x7f080112
        0x7f080114
        0x7f080116
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static buildRemoteView(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)Landroid/widget/RemoteViews;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    .line 193
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    .line 197
    invoke-virtual {v0, p1}, Lcl/birdie/params/Preferencias;->getWidgetParadero(I)Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    move-result-object v11

    .line 199
    .local v11, "pw":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v9, "intent":Landroid/content/Intent;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_0

    .line 201
    const v0, 0x10008000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    :cond_0
    if-eqz v11, :cond_2

    iget-object v0, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "buildRemoteView: paradero "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " en "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v4, v4, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v4, v4, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    const-string v0, "paradero"

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v0, "lat"

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v4, v4, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    invoke-virtual {v9, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 207
    const-string v0, "lng"

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v4, v4, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    invoke-virtual {v9, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 213
    :goto_0
    const/high16 v0, 0x8000000

    .line 212
    invoke-static {p0, p1, v9, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 217
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 218
    const v4, 0x7f030048

    .line 217
    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 219
    .local v3, "views":Landroid/widget/RemoteViews;
    const v0, 0x7f0800f5

    invoke-virtual {v3, v0, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    const v0, 0x7f0800f8

    const-string v4, "refresh"

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "cl.birdie.transantiagomaster.widgets.ParaderoAppWidgetProvider.WIDGET_CONTROL"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "paradero_widget://widget/id/#"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 223
    if-eqz v11, :cond_3

    .line 224
    const v0, 0x7f0800f6

    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    const v0, 0x7f0800f7

    .line 227
    const v4, 0x7f060190

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 230
    .local v7, "cal":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 231
    .local v1, "hora":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 234
    .local v2, "min":I
    new-instance v12, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;

    new-instance v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;

    move-object v4, p2

    move v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider$1;-><init>(IILandroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;)V

    .line 280
    iget-object v4, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 234
    invoke-direct {v12, v0, v4}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://api.transantiagomaster.cl/simtx.php?par="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v6, v11, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->par:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-static {v6}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v12, v0}, Lcl/birdie/transantiagomaster/handlers/DescargadorTiemposCallback;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    .end local v1    # "hora":I
    .end local v2    # "min":I
    .end local v7    # "cal":Ljava/util/Calendar;
    :cond_1
    invoke-virtual {p2, p1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 303
    return-object v3

    .line 210
    .end local v3    # "views":Landroid/widget/RemoteViews;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const-string v0, "ParaderoAppWidgetProvider"

    const-string v4, "buildRemoteView: ParaderoWidgetData no existe!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    .restart local v3    # "views":Landroid/widget/RemoteViews;
    .restart local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string v0, "ParaderoAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widgetId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no existe"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const v0, 0x7f0800f7

    .line 287
    const v4, 0x7f060191

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 290
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 291
    sget-object v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->codigos:[I

    aget v0, v0, v8

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 292
    sget-object v0, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->tiempos:[I

    aget v0, v0, v8

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static checkTime(Landroid/content/Context;IZ)V
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "fromAlarm"    # Z

    .prologue
    .line 139
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkTime: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    .line 141
    invoke-virtual {v10, p1}, Lcl/birdie/params/Preferencias;->getWidgetParadero(I)Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    move-result-object v7

    .line 143
    .local v7, "pw":Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 144
    .local v1, "cal":Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 145
    .local v4, "hora":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 146
    .local v5, "min":I
    mul-int/lit8 v10, v4, 0x3c

    add-int v0, v10, v5

    .line 148
    .local v0, "ahora":I
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 152
    .local v6, "now":Ljava/util/Date;
    if-eqz v7, :cond_3

    .line 154
    iget v10, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaDesde:I

    mul-int/lit8 v10, v10, 0x3c

    iget v11, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minDesde:I

    add-int v2, v10, v11

    .line 155
    .local v2, "desde":I
    iget v10, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaHasta:I

    mul-int/lit8 v10, v10, 0x3c

    iget v11, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minHasta:I

    add-int v3, v10, v11

    .line 158
    .local v3, "hasta":I
    if-ge v0, v2, :cond_0

    .line 159
    sub-int v10, v2, v0

    mul-int/lit8 v9, v10, 0x3c

    .line 160
    .local v9, "time":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": caso 1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    invoke-static {p0, p1, v9}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    .line 189
    .end local v2    # "desde":I
    .end local v3    # "hasta":I
    .end local v9    # "time":I
    :goto_0
    return-void

    .line 165
    .restart local v2    # "desde":I
    .restart local v3    # "hasta":I
    :cond_0
    if-gt v2, v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": caso 2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    if-nez p2, :cond_1

    .line 168
    const/4 v10, 0x1

    invoke-static {p0, p1, v10}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    goto :goto_0

    .line 170
    :cond_1
    const/16 v10, 0x12c

    invoke-static {p0, p1, v10}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 177
    .local v8, "then":Ljava/util/Calendar;
    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 178
    const/16 v10, 0xb

    iget v11, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->horaDesde:I

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/16 v10, 0xc

    iget v11, v7, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->minDesde:I

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 181
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    div-int/lit16 v9, v10, 0x3e8

    .line 182
    .restart local v9    # "time":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": caso 3: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    invoke-static {p0, p1, v9}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    goto :goto_0

    .line 186
    .end local v2    # "desde":I
    .end local v3    # "hasta":I
    .end local v8    # "then":Ljava/util/Calendar;
    .end local v9    # "time":I
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkTime: no data para "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", 10 segundos retry"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    const/16 v10, 0xa

    invoke-static {p0, p1, v10}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method private static setAlarm(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I
    .param p2, "triggerAtSeconds"    # I

    .prologue
    const/4 v5, 0x0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAlarm: triggerAtSeconds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v2, "widgetUpdate":Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v3, "appWidgetIds"

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 329
    const-string v3, "paradero_widget://widget/id/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    const/high16 v3, 0x8000000

    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 333
    .local v1, "newPending":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 334
    .local v0, "alarms":Landroid/app/AlarmManager;
    if-ltz p2, :cond_0

    .line 336
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-int/lit16 v6, p2, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 345
    array-length v3, p2

    const/4 v1, 0x0

    move v2, v1

    .line 347
    :goto_0
    if-lt v2, v3, :cond_0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 358
    return-void

    .line 345
    :cond_0
    aget v0, p2, v2

    .line 350
    .local v0, "appWidgetId":I
    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    .line 353
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "deleteWidgetParadero: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v4, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    :goto_1
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 347
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 353
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;

    iget v6, v1, Lcl/birdie/transantiagomaster/widgets/ParaderoWidgetData;->widgetId:I

    if-ne v6, v0, :cond_1

    iget-object v4, v4, Lcl/birdie/params/Preferencias;->paraderoWidgets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onReceive: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    const-string v3, "cl.birdie.transantiagomaster.widgets.ParaderoAppWidgetProvider.WIDGET_CONTROL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "appWidgetId"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_0

    .line 98
    invoke-static {p1, v1, v6}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->setAlarm(Landroid/content/Context;II)V

    .line 135
    .end local v1    # "appWidgetId":I
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ACTION_APPWIDGET_UPDATE: scheme: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    const-string v3, "paradero_widget"

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 110
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 112
    .local v2, "appWidgetIds":[I
    if-eqz v2, :cond_2

    .line 114
    array-length v5, v2

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_3

    .line 130
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_3
    aget v1, v2, v3

    .line 115
    .restart local v1    # "appWidgetId":I
    invoke-static {p1, v1, v4}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->checkTime(Landroid/content/Context;IZ)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetIds":[I
    :cond_4
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 123
    .restart local v2    # "appWidgetIds":[I
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    .line 124
    aget v3, v2, v4

    invoke-static {p1, v3, v6}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->checkTime(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 127
    :cond_5
    const-string v3, "ParaderoAppWidgetProvider"

    const-string v4, "onReceive: widget no existe!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    .end local v2    # "appWidgetIds":[I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 309
    array-length v0, p3

    .line 314
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 319
    return-void

    .line 315
    :cond_0
    aget v1, p3, v2

    .line 317
    .local v1, "appWidgetId":I
    invoke-static {p1, v1, p2}, Lcl/birdie/transantiagomaster/widgets/ParaderoAppWidgetProvider;->buildRemoteView(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)Landroid/widget/RemoteViews;

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
