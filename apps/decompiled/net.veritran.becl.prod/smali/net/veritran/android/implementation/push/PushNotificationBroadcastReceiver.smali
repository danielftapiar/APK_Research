.class public Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationBroadcastReceiver.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1

.field static final TAG:Ljava/lang/String; = "PushNotificationBroadcastReceiver"


# instance fields
.field bundle:Landroid/os/Bundle;

.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getNotificationIcon()I
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "resId":Ljava/lang/Integer;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const/4 v1, 0x1

    .line 175
    .local v1, "useWhiteIcon":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResourceLoader()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v2

    const-string v3, "image_icon_push"

    invoke-virtual {v2, v3}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getDrawableResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 180
    :cond_0
    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResourceLoader()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    move-result-object v2

    const-string v3, "image_icon"

    invoke-virtual {v2, v3}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getDrawableResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 173
    .end local v1    # "useWhiteIcon":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v2, "__PROJECT_NAME__.PUSH_NOTIFICATION_BROADCAST_CONSTANT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "pushBroadcastIntent":Landroid/content/Intent;
    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "PUSH_NOTIFICATION_REG_WAS_ERROR_CONSTANT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    :goto_0
    const-string v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "PUSH_NOTIFICATION_REG_TYPE_CONSTANT"

    const-string v3, "PUSH_NOTIFICATION_UNREGISTER_CONSTANT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void

    .line 57
    :cond_0
    const-string v2, "PUSH_NOTIFICATION_REG_WAS_ERROR_CONSTANT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "registration_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "registration":Ljava/lang/String;
    const-string v2, "PUSH_NOTIFICATION_REG_TYPE_CONSTANT"

    const-string v3, "PUSH_NOTIFICATION_REGISTER_CONSTANT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "PUSH_NOTIFICATION_REGISTER_REG_ID_CONSTANT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v8, "PushNotificationBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendNotification("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v5, 0x0

    .line 194
    .local v5, "startActivityIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".VTSpecialStartActivity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "startActivityIntent":Landroid/content/Intent;
    .local v6, "startActivityIntent":Landroid/content/Intent;
    move-object v5, v6

    .line 201
    .end local v6    # "startActivityIntent":Landroid/content/Intent;
    .restart local v5    # "startActivityIntent":Landroid/content/Intent;
    :goto_0
    if-nez v5, :cond_0

    .line 202
    const-string v8, "PushNotificationBroadcastReceiver"

    const-string v9, "Can\'t resolve activity"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v8

    const v9, 0x186a0

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt(I)I

    move-result v7

    .line 207
    .local v7, "uniqueId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v8, "msg"

    invoke-virtual {v5, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v8, "src"

    const-string v9, "push"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v8, 0x14000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    if-eqz p3, :cond_1

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vtuapp:?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    :cond_1
    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 215
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 218
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    move-object v4, p2

    .line 220
    .local v4, "pushTitle":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 223
    :cond_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v8

    invoke-interface {v8}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    .line 226
    :cond_3
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-direct {p0}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->getNotificationIcon()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 230
    invoke-virtual {v8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 231
    invoke-virtual {v9, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 232
    invoke-virtual {v8, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 233
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, -0x1

    .line 234
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 236
    .local v2, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 238
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    return-void

    .line 196
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "pushTitle":Ljava/lang/String;
    .end local v7    # "uniqueId":I
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v8, "PushNotificationBroadcastReceiver"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x14

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "backgroundColor":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 246
    .local v5, "textColor":Ljava/lang/Integer;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    iget-object v8, v8, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 249
    .local v1, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PUSH_TOAST_BACKGROUND_COLOR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PUSH_TOAST_TEXT_COLOR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 252
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 255
    .end local v1    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_2
    if-nez v0, :cond_3

    .line 256
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 257
    :cond_3
    if-nez v5, :cond_4

    .line 258
    const/high16 v8, -0x1000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 261
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 262
    .local v4, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 264
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v7, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    const/16 v8, 0x28

    const/16 v9, 0x1e

    invoke-virtual {v7, v8, v10, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 271
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 272
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v3, "img":Landroid/widget/ImageView;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v8

    const-string v9, "image_icon"

    invoke-interface {v8, v9}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getDrawableResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 285
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    new-instance v6, Landroid/widget/Toast;

    iget-object v8, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 290
    .local v6, "toast":Landroid/widget/Toast;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/Toast;->setDuration(I)V

    .line 291
    invoke-virtual {v6, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 292
    const/16 v8, 0x37

    invoke-virtual {v6, v8, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 293
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 294
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "applicationBrand":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    const-string v14, "BRAND"

    invoke-virtual {v13, v14}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    :goto_0
    if-nez v2, :cond_0

    .line 87
    const-string v13, "PushNotificationBroadcastReceiver"

    const-string v14, "Can\'t resolve APP BRAND"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, ""

    .line 91
    :cond_0
    const-string v13, "BB__"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v12, 0x1

    .line 93
    .local v12, "usesGMS":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 95
    if-nez v12, :cond_1

    .line 97
    invoke-direct/range {p0 .. p2}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    :cond_1
    :goto_2
    return-void

    .line 82
    .end local v12    # "usesGMS":Z
    :catch_0
    move-exception v5

    .line 83
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "PushNotificationBroadcastReceiver"

    const-string v14, "Catched exception empty (fortify)"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 102
    .restart local v12    # "usesGMS":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 105
    if-eqz v12, :cond_1

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v13, Lnet/veritran/VTApplicationReplacedService;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v1, "appReplacedServiceIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 118
    .end local v1    # "appReplacedServiceIntent":Landroid/content/Intent;
    :cond_4
    const-string v13, "PushNotificationBroadcastReceiver"

    const-string v14, "Received"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p1

    iput-object v0, p0, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->ctx:Landroid/content/Context;

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "message"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "msg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "subject"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "subject":Ljava/lang/String;
    if-nez v8, :cond_5

    if-eqz v11, :cond_1

    .line 128
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "badge"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "badgeStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "params"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "params":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, "badge":I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13, v3}, Lnet/veritran/VTUserApplicationSmart;->setBadgeNumber(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .end local v3    # "badge":I
    :goto_3
    if-eqz v12, :cond_8

    .line 147
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v6

    .line 148
    .local v6, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "messageType":Ljava/lang/String;
    const-string v13, "send_error"

    .line 151
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 166
    .end local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v7    # "messageType":Ljava/lang/String;
    :cond_6
    :goto_4
    const/4 v13, -0x1

    invoke-virtual {p0, v13}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->setResultCode(I)V

    goto/16 :goto_2

    .line 138
    :catch_1
    move-exception v9

    .line 140
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    const-string v13, "PushNotificationBroadcastReceiver"

    const-string v14, "Couldn\'t parse badge, do nothing"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 153
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .restart local v7    # "messageType":Ljava/lang/String;
    :cond_7
    const-string v13, "deleted_messages"

    .line 154
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 158
    invoke-direct {p0, v8, v11, v10}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 162
    .end local v6    # "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .end local v7    # "messageType":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v8, v11, v10}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v8, v11}, Lnet/veritran/android/implementation/push/PushNotificationBroadcastReceiver;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
