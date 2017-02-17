.class public Lcom/mwr/dz/views/ConnectorStatusIndicator;
.super Landroid/widget/LinearLayout;
.source "ConnectorStatusIndicator.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I


# instance fields
.field private animation:Landroid/graphics/drawable/AnimationDrawable;

.field private connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

.field private status_image:Landroid/widget/ImageView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->values()[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 20
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    .line 25
    invoke-direct {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setUpView()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 19
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 20
    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    .line 31
    invoke-direct {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setUpView()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/views/ConnectorStatusIndicator;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private setUpView()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->addView(Landroid/view/View;)V

    .line 49
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setGravity(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public setConnector(Lcom/mwr/jdiesel/api/connectors/Connector;)V
    .locals 1
    .param p1, "connector_parameters"    # Lcom/mwr/jdiesel/api/connectors/Connector;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Connector;->deleteObserver(Ljava/util/Observer;)V

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 40
    iget-object v0, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->connector_parameters:Lcom/mwr/jdiesel/api/connectors/Connector;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Connector;->addObserver(Ljava/util/Observer;)V

    .line 41
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f02000f

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 56
    .local v0, "connector_parameters":Lcom/mwr/jdiesel/api/connectors/Connector;
    invoke-static {}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Connector;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    new-instance v2, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;

    invoke-direct {v2, p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator$1;-><init>(Lcom/mwr/dz/views/ConnectorStatusIndicator;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :pswitch_4
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget-object v1, p0, Lcom/mwr/dz/views/ConnectorStatusIndicator;->status_image:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
