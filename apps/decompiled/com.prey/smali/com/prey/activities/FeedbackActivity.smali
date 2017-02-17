.class public Lcom/prey/activities/FeedbackActivity;
.super Lcom/prey/activities/PreyActivity;
.source "FeedbackActivity.java"


# static fields
.field public static FLAG_FEEDBACK_C2DM:I

.field public static FLAG_FEEDBACK_INIT:I

.field public static FLAG_FEEDBACK_SEND:I

.field private static final SHOW_POPUP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_INIT:I

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_C2DM:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_SEND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/prey/activities/PreyActivity;-><init>()V

    return-void
.end method

.method public static showFeedback(JI)Z
    .locals 8
    .param p0, "installationDate"    # J
    .param p2, "flagFeedback"    # I

    .prologue
    const/4 v1, 0x1

    .line 82
    sget v6, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_C2DM:I

    if-ne p2, v6, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    sget v6, Lcom/prey/activities/FeedbackActivity;->FLAG_FEEDBACK_INIT:I

    if-ne p2, v6, :cond_2

    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 89
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 90
    .local v4, "twoWeekOfYear":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 91
    .local v2, "now":J
    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 96
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "now":J
    .end local v4    # "twoWeekOfYear":J
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/prey/activities/PreyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prey/activities/FeedbackActivity;->setRequestedOrientation(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prey/activities/FeedbackActivity;->showDialog(I)V

    .line 36
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "popup":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    return-object v1

    .line 45
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200af

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 47
    const v2, 0x7f090065

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 48
    const v2, 0x7f090064

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 50
    const v2, 0x7f090061

    new-instance v3, Lcom/prey/activities/FeedbackActivity$1;

    invoke-direct {v3, p0}, Lcom/prey/activities/FeedbackActivity$1;-><init>(Lcom/prey/activities/FeedbackActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x7f090062

    new-instance v3, Lcom/prey/activities/FeedbackActivity$2;

    invoke-direct {v3, p0}, Lcom/prey/activities/FeedbackActivity$2;-><init>(Lcom/prey/activities/FeedbackActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v2, 0x7f090063

    new-instance v3, Lcom/prey/activities/FeedbackActivity$3;

    invoke-direct {v3, p0}, Lcom/prey/activities/FeedbackActivity$3;-><init>(Lcom/prey/activities/FeedbackActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
