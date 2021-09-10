.class public Lpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltk<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lqk;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lpk;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/a;Z)Lsk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a;",
            "Z)",
            "Lsk<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    if-ne p1, p2, :cond_0

    .line 2
    sget-object p1, Lrk;->a:Lrk;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lpk;->b:Lqk;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lqk;

    iget p2, p0, Lpk;->a:I

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lqk;-><init>(IZ)V

    iput-object p1, p0, Lpk;->b:Lqk;

    .line 5
    :cond_1
    iget-object p1, p0, Lpk;->b:Lqk;

    :goto_0
    return-object p1
.end method
