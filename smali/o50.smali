.class public abstract Lo50;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo50$a;,
        Lo50$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo50$a;
    .locals 3

    .line 1
    new-instance v0, Lk50$b;

    invoke-direct {v0}, Lk50$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lk50$b;->d(J)Lo50$a;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lo50$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method
