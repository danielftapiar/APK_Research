.class public Lnet/veritran/android/implementation/AndroidRepositoryFactoryImplementation;
.super Ljava/lang/Object;
.source "AndroidRepositoryFactoryImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/veritran/android/implementation/AndroidRepositoryFactoryImplementation;->context:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public buildRepository(Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;Ljava/util/Vector;)Lnet/veritran/vtuserapplication/persistence/PersistenceInterface;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "versionNumber"    # I
    .param p4, "vPrimaryKeys"    # Ljava/util/Vector;
    .param p5, "vDataFields"    # Ljava/util/Vector;

    .prologue
    .line 24
    new-instance v0, Lnet/veritran/android/implementation/PersistenceImplementation;

    iget-object v1, p0, Lnet/veritran/android/implementation/AndroidRepositoryFactoryImplementation;->context:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/veritran/android/implementation/PersistenceImplementation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Vector;Ljava/util/Vector;)V

    return-object v0
.end method
