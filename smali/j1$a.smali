.class Lj1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:Lj1;


# direct methods
.method constructor <init>(Lj1;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj1$a;->c:Lj1;

    iput-object p2, p0, Lj1$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj1$a;->c:Lj1;

    iget-object v1, p0, Lj1$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lj1;->d(Landroid/graphics/Typeface;)V

    return-void
.end method
