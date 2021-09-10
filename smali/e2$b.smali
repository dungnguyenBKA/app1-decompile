.class final Le2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2;->c(Landroid/content/Context;Ld2;Lj1;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf2$d<",
        "Le2$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lj1;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lj1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2$b;->a:Lj1;

    iput-object p2, p0, Le2$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le2$g;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le2$b;->a:Lj1;

    const/4 v0, 0x1

    iget-object v1, p0, Le2$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lj1;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Le2$g;->b:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le2$b;->a:Lj1;

    iget-object p1, p1, Le2$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Le2$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lj1;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le2$b;->a:Lj1;

    iget-object v1, p0, Le2$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lj1;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method
