.class Lcom/facebook/tools/dextr/runtime/NotificationControls;
.super Ljava/lang/Object;
.source "NotificationControls.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/NotificationManager;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/PendingIntent;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;

.field private h:Landroid/app/Notification;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.facebook.tools.dextr.CONTROL_TOGGLE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c:Landroid/content/Context;

    .line 53
    iput-boolean v4, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->e:Z

    .line 54
    iput-boolean v4, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->f:Z

    .line 55
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b:Landroid/app/NotificationManager;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/facebook/content/DynamicSecureBroadcastReceiver;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a:Ljava/lang/String;

    new-instance v3, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;

    invoke-direct {v3, p0}, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;-><init>(Lcom/facebook/tools/dextr/runtime/NotificationControls;)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/content/DynamicSecureBroadcastReceiver;-><init>(Ljava/lang/String;Lcom/facebook/content/ActionReceiver;)V

    .line 74
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->d:Landroid/app/PendingIntent;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->g:Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;

    return-object v0
.end method

.method private a(ILandroid/app/Notification;)V
    .locals 2
    .param p2    # Landroid/app/Notification;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notification can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->h:Landroid/app/Notification;

    .line 180
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c()V

    .line 181
    return-void
.end method

.method static synthetic b(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->f:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b:Landroid/app/NotificationManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 144
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TraceManager is null and we\'re showing a notification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/fbtrace/FbTraceIdHelper;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz p1, :cond_1

    .line 153
    const-string v2, "DexTr is tracing"

    .line 154
    const-string v1, "Tap to stop and upload trace "

    .line 155
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s\n\nTrace ID: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    const-string v4, "Dextr controls"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->d(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x1080059

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->d:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 174
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->e()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->h:Landroid/app/Notification;

    .line 175
    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->h:Landroid/app/Notification;

    invoke-direct {p0, v0, v1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(ILandroid/app/Notification;)V

    .line 176
    return-void

    .line 157
    :cond_1
    const-string v1, "DexTr is primed and ready"

    .line 158
    const-string v0, "Tap to start tracing"

    move-object v2, v1

    move-object v1, v0

    .line 159
    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;)V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->g:Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;)V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/tools/dextr/runtime/NotificationControls$2;->a:[I

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/NotificationControls$UploadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    const-string v0, "Trace upload status unknown"

    move-object v1, v0

    .line 128
    :goto_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->d(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x1080055

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->e()Landroid/app/Notification;

    move-result-object v0

    .line 136
    const/16 v1, 0xc9

    invoke-direct {p0, v1, v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 108
    :pswitch_0
    :try_start_1
    const-string v1, "Uploading DexTr trace"

    .line 109
    const-string v0, "Uploading trace"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v1, "Trace upload was successful"

    .line 114
    const-string v0, "Upload successful"

    goto :goto_0

    .line 118
    :pswitch_2
    const-string v1, "Trace upload failed"

    .line 119
    const-string v0, "Upload failed"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->f:Z

    invoke-direct {p0, v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c(Z)V

    .line 93
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->f:Z

    if-eq v0, p1, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->c(Z)V

    .line 99
    iput-boolean p1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
