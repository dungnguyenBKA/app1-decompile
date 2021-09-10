.class public final Lbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvc<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lph;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Loe;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lph;

    invoke-direct {v0, p1, p2}, Lph;-><init>(Ljava/io/InputStream;Loe;)V

    iput-object v0, p0, Lbd;->a:Lph;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Lph;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbd;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd;->a:Lph;

    invoke-virtual {v0}, Lph;->L()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbd;->a:Lph;

    invoke-virtual {v0}, Lph;->o()V

    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lbd;->a:Lph;

    invoke-virtual {v0}, Lph;->reset()V

    .line 2
    iget-object v0, p0, Lbd;->a:Lph;

    return-object v0
.end method
