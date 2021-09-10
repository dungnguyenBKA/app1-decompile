.class Lwd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ltd$d;

.field final b:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Ltd<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Ltd$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lwd$a$a;

    invoke-direct {v0, p0}, Lwd$a$a;-><init>(Lwd$a;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lil;->a(ILil$b;)Lk2;

    move-result-object v0

    iput-object v0, p0, Lwd$a;->b:Lk2;

    .line 4
    iput-object p1, p0, Lwd$a;->a:Ltd$d;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lzd;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Ltd$a;)Ltd;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lzd;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lvd;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Ltd$a<",
            "TR;>;)",
            "Ltd<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 1
    iget-object v1, v0, Lwd$a;->b:Lk2;

    invoke-interface {v1}, Lk2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltd;

    move-object/from16 p1, v1

    move-object/from16 p2, v1

    const-string v1, "Argument must not be null"

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    .line 2
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v1, v0, Lwd$a;->c:I

    move/from16 v18, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lwd$a;->c:I

    move-object/from16 v1, p2

    move-object/from16 v20, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    invoke-virtual/range {v1 .. v18}, Ltd;->k(Lcom/bumptech/glide/e;Ljava/lang/Object;Lzd;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lvd;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Ltd$a;I)Ltd;

    return-object v19
.end method
