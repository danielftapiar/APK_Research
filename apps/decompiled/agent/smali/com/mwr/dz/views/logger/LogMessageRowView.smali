.class public Lcom/mwr/dz/views/logger/LogMessageRowView;
.super Landroid/widget/LinearLayout;
.source "LogMessageRowView.java"


# instance fields
.field private message:Lcom/mwr/jdiesel/logger/LogMessage;

.field private message_label:Landroid/widget/TextView;

.field private message_message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message:Lcom/mwr/jdiesel/logger/LogMessage;

    .line 15
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_message:Landroid/widget/TextView;

    .line 21
    invoke-direct {p0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->setUpView()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message:Lcom/mwr/jdiesel/logger/LogMessage;

    .line 15
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_message:Landroid/widget/TextView;

    .line 27
    invoke-direct {p0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->setUpView()V

    .line 28
    return-void
.end method

.method private setLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x10000

    const v3, -0xff0100

    const/high16 v2, -0x1000000

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 67
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 35
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 41
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 47
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 61
    :pswitch_5
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    const/16 v1, -0x5b00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setUpView()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->addView(Landroid/view/View;)V

    .line 82
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_label:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_message:Landroid/widget/TextView;

    .line 84
    return-void
.end method


# virtual methods
.method public setLogMessage(Lcom/mwr/jdiesel/logger/LogMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/mwr/jdiesel/logger/LogMessage;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message:Lcom/mwr/jdiesel/logger/LogMessage;

    .line 75
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message:Lcom/mwr/jdiesel/logger/LogMessage;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/logger/LogMessage;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mwr/dz/views/logger/LogMessageRowView;->setLevel(I)V

    .line 76
    iget-object v0, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message_message:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mwr/dz/views/logger/LogMessageRowView;->message:Lcom/mwr/jdiesel/logger/LogMessage;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/logger/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
