.class public Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;
.super Ljava/lang/Object;


# static fields
.field public static final CONSTRAINT_BOTTOM:I = 0x20

.field public static final CONSTRAINT_CENTER:I = 0x2

.field public static final CONSTRAINT_LEFT:I = 0x1

.field public static final CONSTRAINT_MIDDLE:I = 0x10

.field public static final CONSTRAINT_RIGHT:I = 0x4

.field public static final CONSTRAINT_TOP:I = 0x8

.field public static final CONSTRAINT_UNDEFINED:I


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    iput p1, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    return-void
.end method

.method public static build(I)Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;
    .locals 1

    new-instance v0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    return-void
.end method

.method public hasConstraint(I)Z
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    and-int/2addr v0, p1

    iput v0, p0, Lnet/veritran/vtuserapplication/ui/components/VTContainerConstraint;->a:I

    return-object p0
.end method
