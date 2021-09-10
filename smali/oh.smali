.class public final Loh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfh;


# direct methods
.method public constructor <init>(Lfh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Loh;->a:Lfh;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    iget-object p1, p0, Loh;->a:Lfh;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ldd;->c()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 1

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    iget-object v0, p0, Loh;->a:Lfh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lfh;->a(Landroid/os/ParcelFileDescriptor;IILcom/bumptech/glide/load/i;)Lhe;

    move-result-object p1

    return-object p1
.end method
