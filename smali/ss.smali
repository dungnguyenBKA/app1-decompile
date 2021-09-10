.class public abstract Lss;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss$a;,
        Lss$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lss$a;
    .locals 1

    .line 1
    new-instance v0, Lms$b;

    invoke-direct {v0}, Lms$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lds;
.end method

.method public abstract c()Lss$b;
.end method
