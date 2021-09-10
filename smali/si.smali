.class public Lsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvi<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsi;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lsi;->a:Landroid/content/res/Resources;

    invoke-static {p2, p1}, Lnh;->b(Landroid/content/res/Resources;Lhe;)Lhe;

    move-result-object p1

    return-object p1
.end method
