.class public abstract Li20$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$c$a;,
        Li20$c$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$c$a;
    .locals 1

    .line 1
    new-instance v0, Lq10$b;

    invoke-direct {v0}, Lq10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$c$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method
