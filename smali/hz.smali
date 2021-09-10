.class public Lhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldz;


# instance fields
.field private final a:Lvy;


# direct methods
.method public constructor <init>(Lvy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhz;->a:Lvy;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhz;->a:Lvy;

    const-string v1, "clx"

    invoke-interface {v0, v1, p1, p2}, Lvy;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
