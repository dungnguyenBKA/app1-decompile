.class public Lkm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lkm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkm;
    .locals 1

    .line 1
    sget-object v0, Lkm;->a:Lkm;

    if-nez v0, :cond_0

    new-instance v0, Lkm;

    invoke-direct {v0}, Lkm;-><init>()V

    sput-object v0, Lkm;->a:Lkm;

    :cond_0
    return-object v0
.end method
