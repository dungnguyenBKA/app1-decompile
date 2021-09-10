.class final Lrr$a;
.super Lhg0;
.source "SourceFile"

# interfaces
.implements Lfg0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrr;-><init>(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhg0;",
        "Lfg0<",
        "Landroid/util/SparseIntArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lrr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrr$a;

    invoke-direct {v0}, Lrr$a;-><init>()V

    sput-object v0, Lrr$a;->b:Lrr$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhg0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    return-object v0
.end method
