.class final Le2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Le2$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ld2;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ld2;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2$a;->b:Landroid/content/Context;

    iput-object p2, p0, Le2$a;->c:Ld2;

    iput p3, p0, Le2$a;->d:I

    iput-object p4, p0, Le2$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le2$a;->b:Landroid/content/Context;

    iget-object v1, p0, Le2$a;->c:Ld2;

    iget v2, p0, Le2$a;->d:I

    invoke-static {v0, v1, v2}, Le2;->b(Landroid/content/Context;Ld2;I)Le2$g;

    move-result-object v0

    .line 2
    iget-object v1, v0, Le2$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Le2;->a:Lc0;

    iget-object v3, p0, Le2$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
