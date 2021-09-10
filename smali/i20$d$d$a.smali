.class public abstract Li20$d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li20$d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li20$d$d$a$a;,
        Li20$d$d$a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Li20$d$d$a$a;
    .locals 1

    .line 1
    new-instance v0, Lx10$b;

    invoke-direct {v0}, Lx10$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/Boolean;
.end method

.method public abstract c()Lj20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj20<",
            "Li20$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Li20$d$d$a$b;
.end method

.method public abstract e()I
.end method

.method public abstract f()Li20$d$d$a$a;
.end method
