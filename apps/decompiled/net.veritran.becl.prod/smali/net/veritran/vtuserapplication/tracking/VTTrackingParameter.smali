.class public Lnet/veritran/vtuserapplication/tracking/VTTrackingParameter;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/veritran/vtuserapplication/tracking/VTTrackingParameter;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/vtuserapplication/tracking/VTTrackingParameter;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/tracking/VTTrackingParameter;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/tracking/VTTrackingParameter;->b:Ljava/lang/String;

    return-object v0
.end method
