.class public abstract Lcom/mwr/common/android/app/NotifyingService;
.super Landroid/app/Service;
.source "NotifyingService.java"


# instance fields
.field private notification_manager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/common/android/app/NotifyingService;->notification_manager:Landroid/app/NotificationManager;

    .line 10
    return-void
.end method


# virtual methods
.method protected hideNotification(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "view_id"    # I

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mwr/common/android/app/NotifyingService;->notification_manager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/mwr/common/android/app/NotifyingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mwr/common/android/app/NotifyingService;->notification_manager:Landroid/app/NotificationManager;

    .line 21
    return-void
.end method

.method protected onCreateNotification(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RemoteViews;

    .prologue
    .line 23
    return-void
.end method

.method protected showNotification(Ljava/lang/String;IILandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "view_id"    # I
    .param p3, "icon_id"    # I
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 26
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 28
    .local v1, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/mwr/common/android/app/NotifyingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 30
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v0}, Lcom/mwr/common/android/app/NotifyingService;->onCreateNotification(Landroid/widget/RemoteViews;)V

    .line 32
    iput p3, v1, Landroid/app/Notification;->icon:I

    .line 33
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 34
    iput-object p4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 35
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 37
    iget-object v2, p0, Lcom/mwr/common/android/app/NotifyingService;->notification_manager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 38
    return-void
.end method
