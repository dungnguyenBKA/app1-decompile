.class final Lqs$b;
.super Lws$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lws$c;

.field private b:Lws$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lws$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lws;
    .locals 4

    .line 1
    new-instance v0, Lqs;

    iget-object v1, p0, Lqs$b;->a:Lws$c;

    iget-object v2, p0, Lqs$b;->b:Lws$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lqs;-><init>(Lws$c;Lws$b;Lqs$a;)V

    return-object v0
.end method

.method public b(Lws$b;)Lws$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lqs$b;->b:Lws$b;

    return-object p0
.end method

.method public c(Lws$c;)Lws$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lqs$b;->a:Lws$c;

    return-object p0
.end method
