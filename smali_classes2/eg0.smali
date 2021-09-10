.class public final Leg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luf0<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private b:Lfg0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfg0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfg0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfg0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leg0;->b:Lfg0;

    .line 3
    sget-object p1, Lcg0;->a:Lcg0;

    iput-object p1, p0, Leg0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leg0;->c:Ljava/lang/Object;

    sget-object v1, Lcg0;->a:Lcg0;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Leg0;->b:Lfg0;

    invoke-static {v0}, Lgg0;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lfg0;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Leg0;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leg0;->b:Lfg0;

    .line 4
    :cond_0
    iget-object v0, p0, Leg0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Leg0;->c:Ljava/lang/Object;

    sget-object v1, Lcg0;->a:Lcg0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Leg0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
