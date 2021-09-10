.class public Lp50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lp50;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lp50;
    .locals 1

    .line 1
    sget-object v0, Lp50;->a:Lp50;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lp50;

    invoke-direct {v0}, Lp50;-><init>()V

    sput-object v0, Lp50;->a:Lp50;

    .line 3
    :cond_0
    sget-object v0, Lp50;->a:Lp50;

    return-object v0
.end method
