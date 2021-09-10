.class public Lr20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr20$a;
    }
.end annotation


# static fields
.field private static final a:Ld40;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp40;

    invoke-direct {v0}, Lp40;-><init>()V

    sget-object v1, Ln10;->a:Lk40;

    .line 2
    check-cast v1, Ln10;

    invoke-virtual {v1, v0}, Ln10;->a(Ll40;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lp40;->f(Z)Lp40;

    .line 4
    invoke-virtual {v0}, Lp40;->e()Ld40;

    move-result-object v0

    sput-object v0, Lr20;->a:Ld40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/util/JsonReader;)Li20$d$d;
    .locals 0

    invoke-static {p0}, Lr20;->h(Landroid/util/JsonReader;)Li20$d$d;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/util/JsonReader;)Li20$d$d$a$b$e;
    .locals 4

    .line 1
    invoke-static {}, Li20$d$d$a$b$e;->a()Li20$d$d$a$b$e$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "importance"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "frames"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$a;->c(I)Li20$d$d$a$b$e$a;

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$a;->d(Ljava/lang/String;)Li20$d$d$a$b$e$a;

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static {}, Lq20;->b()Lr20$a;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$a;->b(Lj20;)Li20$d$d$a$b$e$a;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 13
    invoke-virtual {v0}, Li20$d$d$a$b$e$a;->a()Li20$d$d$a$b$e;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Landroid/util/JsonReader;)Li20$d$d$a$b$e$b;
    .locals 0

    invoke-static {p0}, Lr20;->j(Landroid/util/JsonReader;)Li20$d$d$a$b$e$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Landroid/util/JsonReader;)Li20$d$d$a$b$e$b;
    .locals 0

    invoke-static {p0}, Lr20;->j(Landroid/util/JsonReader;)Li20$d$d$a$b$e$b;

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/util/JsonReader;Lr20$a;)Lj20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lr20$a<",
            "TT;>;)",
            "Lj20<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Lr20$a;->a(Landroid/util/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 6
    invoke-static {v0}, Lj20;->a(Ljava/util/List;)Lj20;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/util/JsonReader;)Li20$d$d;
    .locals 12

    .line 1
    invoke-static {}, Li20$d$d;->a()Li20$d$d$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_1
    const/4 v1, -0x1

    goto :goto_2

    :sswitch_0
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_1
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_2
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_4
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Li20$d$d$b;->e(J)Li20$d$d$b;

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$b;->f(Ljava/lang/String;)Li20$d$d$b;

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static {}, Li20$d$d$d;->a()Li20$d$d$d$a;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 11
    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$d$d$d$a;->b(Ljava/lang/String;)Li20$d$d$d$a;

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 17
    invoke-virtual {v1}, Li20$d$d$d$a;->a()Li20$d$d$d;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Li20$d$d$b;->d(Li20$d$d$d;)Li20$d$d$b;

    goto/16 :goto_0

    .line 19
    :pswitch_3
    invoke-static {}, Li20$d$d$a;->a()Li20$d$d$a$a;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 21
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 22
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_5

    :sswitch_5
    const-string v3, "uiOrientation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    goto :goto_6

    :sswitch_6
    const-string v3, "customAttributes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    goto :goto_6

    :sswitch_7
    const-string v3, "execution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x1

    goto :goto_6

    :sswitch_8
    const-string v3, "background"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :goto_5
    const/4 v2, -0x1

    :goto_6
    if-eqz v2, :cond_21

    if-eq v2, v8, :cond_d

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_b

    .line 24
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    .line 25
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Li20$d$d$a$a;->e(I)Li20$d$d$a$a;

    goto :goto_4

    .line 26
    :cond_c
    invoke-static {}, Lm20;->b()Lr20$a;

    move-result-object v2

    .line 27
    invoke-static {p0, v2}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Li20$d$d$a$a;->c(Lj20;)Li20$d$d$a$a;

    goto :goto_4

    .line 29
    :cond_d
    invoke-static {}, Li20$d$d$a$b;->a()Li20$d$d$a$b$b;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 31
    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 32
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    goto :goto_8

    :sswitch_9
    const-string v9, "exception"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v3, 0x3

    goto :goto_9

    :sswitch_a
    const-string v9, "binaries"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_8

    :cond_f
    const/4 v3, 0x2

    goto :goto_9

    :sswitch_b
    const-string v9, "signal"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    const/4 v3, 0x1

    goto :goto_9

    :sswitch_c
    const-string v9, "threads"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :goto_8
    const/4 v3, -0x1

    :goto_9
    if-eqz v3, :cond_1f

    if-eq v3, v8, :cond_14

    if-eq v3, v7, :cond_13

    if-eq v3, v6, :cond_12

    .line 34
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 35
    :cond_12
    invoke-static {p0}, Lr20;->i(Landroid/util/JsonReader;)Li20$d$d$a$b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$d$d$a$b$b;->c(Li20$d$d$a$b$c;)Li20$d$d$a$b$b;

    goto :goto_7

    .line 36
    :cond_13
    invoke-static {}, Lo20;->b()Lr20$a;

    move-result-object v3

    .line 37
    invoke-static {p0, v3}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Li20$d$d$a$b$b;->b(Lj20;)Li20$d$d$a$b$b;

    goto :goto_7

    .line 39
    :cond_14
    invoke-static {}, Li20$d$d$a$b$d;->a()Li20$d$d$a$b$d$a;

    move-result-object v3

    .line 40
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 41
    :goto_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 42
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x4468640c

    if-eq v10, v11, :cond_19

    const v11, 0x2eaded

    if-eq v10, v11, :cond_17

    const v11, 0x337a8b

    if-eq v10, v11, :cond_15

    goto :goto_b

    :cond_15
    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto :goto_b

    :cond_16
    const/4 v9, 0x2

    goto :goto_c

    :cond_17
    const-string v10, "code"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_b

    :cond_18
    const/4 v9, 0x1

    goto :goto_c

    :cond_19
    const-string v10, "address"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    :goto_b
    const/4 v9, -0x1

    goto :goto_c

    :cond_1a
    const/4 v9, 0x0

    :goto_c
    if-eqz v9, :cond_1d

    if-eq v9, v8, :cond_1c

    if-eq v9, v7, :cond_1b

    .line 44
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    .line 45
    :cond_1b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$d$a$b$d$a;->d(Ljava/lang/String;)Li20$d$d$a$b$d$a;

    goto :goto_a

    .line 46
    :cond_1c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$d$a$b$d$a;->c(Ljava/lang/String;)Li20$d$d$a$b$d$a;

    goto :goto_a

    .line 47
    :cond_1d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Li20$d$d$a$b$d$a;->b(J)Li20$d$d$a$b$d$a;

    goto :goto_a

    .line 48
    :cond_1e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 49
    invoke-virtual {v3}, Li20$d$d$a$b$d$a;->a()Li20$d$d$a$b$d;

    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Li20$d$d$a$b$b;->d(Li20$d$d$a$b$d;)Li20$d$d$a$b$b;

    goto/16 :goto_7

    .line 51
    :cond_1f
    invoke-static {}, Ln20;->b()Lr20$a;

    move-result-object v3

    .line 52
    invoke-static {p0, v3}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Li20$d$d$a$b$b;->e(Lj20;)Li20$d$d$a$b$b;

    goto/16 :goto_7

    .line 54
    :cond_20
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 55
    invoke-virtual {v2}, Li20$d$d$a$b$b;->a()Li20$d$d$a$b;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Li20$d$d$a$a;->d(Li20$d$d$a$b;)Li20$d$d$a$a;

    goto/16 :goto_4

    .line 57
    :cond_21
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$d$d$a$a;->b(Ljava/lang/Boolean;)Li20$d$d$a$a;

    goto/16 :goto_4

    .line 58
    :cond_22
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 59
    invoke-virtual {v1}, Li20$d$d$a$a;->a()Li20$d$d$a;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Li20$d$d$b;->b(Li20$d$d$a;)Li20$d$d$b;

    goto/16 :goto_0

    .line 61
    :pswitch_4
    invoke-static {}, Li20$d$d$c;->a()Li20$d$d$c$a;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 63
    :goto_d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 64
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_3

    :goto_e
    const/4 v2, -0x1

    goto :goto_f

    :sswitch_d
    const-string v9, "proximityOn"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_e

    :cond_23
    const/4 v2, 0x5

    goto :goto_f

    :sswitch_e
    const-string v9, "ramUsed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_e

    :cond_24
    const/4 v2, 0x4

    goto :goto_f

    :sswitch_f
    const-string v9, "diskUsed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_e

    :cond_25
    const/4 v2, 0x3

    goto :goto_f

    :sswitch_10
    const-string v9, "orientation"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_e

    :cond_26
    const/4 v2, 0x2

    goto :goto_f

    :sswitch_11
    const-string v9, "batteryVelocity"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_e

    :cond_27
    const/4 v2, 0x1

    goto :goto_f

    :sswitch_12
    const-string v9, "batteryLevel"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_e

    :cond_28
    const/4 v2, 0x0

    :goto_f
    packed-switch v2, :pswitch_data_1

    .line 66
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_d

    .line 67
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    invoke-virtual {v1, v2}, Li20$d$d$c$a;->f(Z)Li20$d$d$c$a;

    goto :goto_d

    .line 68
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Li20$d$d$c$a;->g(J)Li20$d$d$c$a;

    goto :goto_d

    .line 69
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Li20$d$d$c$a;->d(J)Li20$d$d$c$a;

    goto :goto_d

    .line 70
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Li20$d$d$c$a;->e(I)Li20$d$d$c$a;

    goto :goto_d

    .line 71
    :pswitch_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Li20$d$d$c$a;->c(I)Li20$d$d$c$a;

    goto/16 :goto_d

    .line 72
    :pswitch_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$d$d$c$a;->b(Ljava/lang/Double;)Li20$d$d$c$a;

    goto/16 :goto_d

    .line 73
    :cond_29
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 74
    invoke-virtual {v1}, Li20$d$d$c$a;->a()Li20$d$d$c;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Li20$d$d$b;->c(Li20$d$d$c;)Li20$d$d$b;

    goto/16 :goto_0

    .line 76
    :cond_2a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 77
    invoke-virtual {v0}, Li20$d$d$b;->a()Li20$d$d;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_4
        0x17a21 -> :sswitch_3
        0x1a344 -> :sswitch_2
        0x368f3a -> :sswitch_1
        0x3492916 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4f67aad2 -> :sswitch_8
        -0x4106f4e8 -> :sswitch_7
        0x211737a8 -> :sswitch_6
        0x375b6a9c -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x4fbf4c57 -> :sswitch_c
        -0x35ca9158 -> :sswitch_b
        0x37e2e05f -> :sswitch_a
        0x584fd04f -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x65d74289 -> :sswitch_12
        -0x56c20df6 -> :sswitch_11
        -0x55cd0a30 -> :sswitch_10
        0x10ad56fa -> :sswitch_f
        0x3a34d8fb -> :sswitch_e
        0x5a6876be -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static i(Landroid/util/JsonReader;)Li20$d$d$a$b$c;
    .locals 4

    .line 1
    invoke-static {}, Li20$d$d$a$b$c;->a()Li20$d$d$a$b$c$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "overflowCount"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "causedBy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "reason"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "frames"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$c$a;->d(I)Li20$d$d$a$b$c$a;

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-static {p0}, Lr20;->i(Landroid/util/JsonReader;)Li20$d$d$a$b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$c$a;->b(Li20$d$d$a$b$c;)Li20$d$d$a$b$c$a;

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$c$a;->f(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$c$a;->e(Ljava/lang/String;)Li20$d$d$a$b$c$a;

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-static {}, Lp20;->b()Lr20$a;

    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Li20$d$d$a$b$c$a;->c(Lj20;)Li20$d$d$a$b$c$a;

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 15
    invoke-virtual {v0}, Li20$d$d$a$b$c$a;->a()Li20$d$d$a$b$c;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4b7d7b5a -> :sswitch_4
        -0x37ba6dbc -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x57bc6d2 -> :sswitch_1
        0x22acde2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static j(Landroid/util/JsonReader;)Li20$d$d$a$b$e$b;
    .locals 4

    .line 1
    invoke-static {}, Li20$d$d$a$b$e$b;->a()Li20$d$d$a$b$e$b$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "importance"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "pc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "symbol"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "offset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$b$a;->c(I)Li20$d$d$a$b$e$b$a;

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$b$a;->b(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Li20$d$d$a$b$e$b$a;->e(J)Li20$d$d$a$b$e$b$a;

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$d$d$a$b$e$b$a;->f(Ljava/lang/String;)Li20$d$d$a$b$e$b$a;

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Li20$d$d$a$b$e$b$a;->d(J)Li20$d$d$a$b$e$b$a;

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 13
    invoke-virtual {v0}, Li20$d$d$a$b$e$b$a;->a()Li20$d$d$a$b$e$b;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3cc89b6d -> :sswitch_4
        -0x34e68a68 -> :sswitch_3
        0xdf3 -> :sswitch_2
        0x2ff57c -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static k(Landroid/util/JsonReader;)Li20;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Li20;->b()Li20$a;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "displayVersion"

    const-string v5, "platform"

    const-string v6, "installationUuid"

    const-string v7, "buildVersion"

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v8, 0x3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "session"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "gmpAppId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_5
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_6
    const-string v3, "sdkVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_7
    const-string v3, "ndkPayload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {}, Li20$d;->a()Li20$d$b;

    move-result-object v2

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v9, "identifier"

    const/16 v17, 0x8

    sparse-switch v16, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_8
    const-string v11, "generatorType"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_4

    :cond_8
    const/16 v3, 0xa

    goto/16 :goto_5

    :sswitch_9
    const-string v11, "crashed"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_4

    :cond_9
    const/16 v3, 0x9

    goto/16 :goto_5

    :sswitch_a
    const-string v11, "generator"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_4

    :cond_a
    const/16 v3, 0x8

    goto/16 :goto_5

    :sswitch_b
    const-string v11, "user"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x7

    goto :goto_5

    :sswitch_c
    const-string v11, "app"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x6

    goto :goto_5

    :sswitch_d
    const-string v11, "os"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v3, 0x5

    goto :goto_5

    :sswitch_e
    const-string v11, "events"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_4

    :cond_e
    const/4 v3, 0x4

    goto :goto_5

    :sswitch_f
    const-string v11, "device"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    :cond_f
    const/4 v3, 0x3

    goto :goto_5

    :sswitch_10
    const-string v11, "endedAt"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_10
    const/4 v3, 0x2

    goto :goto_5

    :sswitch_11
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_4

    :cond_11
    const/4 v3, 0x1

    goto :goto_5

    :sswitch_12
    const-string v11, "startedAt"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    :goto_4
    const/4 v3, -0x1

    :goto_5
    const-string v11, "version"

    packed-switch v3, :pswitch_data_1

    const/4 v12, 0x5

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_3

    .line 13
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Li20$d$b;->h(I)Li20$d$b;

    goto/16 :goto_3

    .line 14
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Li20$d$b;->c(Z)Li20$d$b;

    goto/16 :goto_3

    .line 15
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$d$b;->g(Ljava/lang/String;)Li20$d$b;

    goto/16 :goto_3

    .line 16
    :pswitch_4
    invoke-static {}, Li20$d$f;->a()Li20$d$f$a;

    move-result-object v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 18
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    .line 22
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Li20$d$f$a;->b(Ljava/lang/String;)Li20$d$f$a;

    goto :goto_6

    .line 23
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 24
    invoke-virtual {v3}, Li20$d$f$a;->a()Li20$d$f;

    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Li20$d$b;->m(Li20$d$f;)Li20$d$b;

    goto/16 :goto_3

    .line 26
    :pswitch_5
    invoke-static {}, Li20$d$a;->a()Li20$d$a$a;

    move-result-object v3

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_2

    goto :goto_8

    :sswitch_13
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_8

    :cond_15
    const/4 v10, 0x5

    goto :goto_9

    :sswitch_14
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_8

    :cond_16
    const/4 v10, 0x4

    goto :goto_9

    :sswitch_15
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_8

    :cond_17
    const/4 v10, 0x3

    goto :goto_9

    :sswitch_16
    const-string v10, "developmentPlatformVersion"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto :goto_8

    :cond_18
    const/4 v10, 0x2

    goto :goto_9

    :sswitch_17
    const-string v10, "developmentPlatform"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_8

    :cond_19
    const/4 v10, 0x1

    goto :goto_9

    :sswitch_18
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v10, 0x0

    goto :goto_9

    :goto_8
    const/4 v10, -0x1

    :goto_9
    if-eqz v10, :cond_20

    if-eq v10, v15, :cond_1f

    if-eq v10, v14, :cond_1e

    if-eq v10, v8, :cond_1d

    if-eq v10, v13, :cond_1c

    const/4 v12, 0x5

    if-eq v10, v12, :cond_1b

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    .line 32
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->d(Ljava/lang/String;)Li20$d$a$a;

    goto :goto_7

    :cond_1c
    const/4 v12, 0x5

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->f(Ljava/lang/String;)Li20$d$a$a;

    goto :goto_7

    :cond_1d
    const/4 v12, 0x5

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->g(Ljava/lang/String;)Li20$d$a$a;

    goto :goto_7

    :cond_1e
    const/4 v12, 0x5

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->c(Ljava/lang/String;)Li20$d$a$a;

    goto/16 :goto_7

    :cond_1f
    const/4 v12, 0x5

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->b(Ljava/lang/String;)Li20$d$a$a;

    goto/16 :goto_7

    :cond_20
    const/4 v12, 0x5

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Li20$d$a$a;->e(Ljava/lang/String;)Li20$d$a$a;

    goto/16 :goto_7

    :cond_21
    const/4 v12, 0x5

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 39
    invoke-virtual {v3}, Li20$d$a$a;->a()Li20$d$a;

    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Li20$d$b;->b(Li20$d$a;)Li20$d$b;

    goto/16 :goto_3

    :pswitch_6
    const/4 v12, 0x5

    .line 41
    invoke-static {}, Li20$d$e;->a()Li20$d$e$a;

    move-result-object v3

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 43
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_3

    goto :goto_b

    :sswitch_19
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    goto :goto_b

    :cond_22
    const/4 v9, 0x3

    goto :goto_c

    :sswitch_1a
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    goto :goto_b

    :cond_23
    const/4 v9, 0x2

    goto :goto_c

    :sswitch_1b
    const-string v10, "jailbroken"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    goto :goto_b

    :cond_24
    const/4 v9, 0x1

    goto :goto_c

    :sswitch_1c
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    goto :goto_b

    :cond_25
    const/4 v9, 0x0

    goto :goto_c

    :goto_b
    const/4 v9, -0x1

    :goto_c
    if-eqz v9, :cond_29

    if-eq v9, v15, :cond_28

    if-eq v9, v14, :cond_27

    if-eq v9, v8, :cond_26

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    .line 47
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$e$a;->d(I)Li20$d$e$a;

    goto :goto_a

    .line 48
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$e$a;->e(Ljava/lang/String;)Li20$d$e$a;

    goto :goto_a

    .line 49
    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$e$a;->c(Z)Li20$d$e$a;

    goto :goto_a

    .line 50
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$e$a;->b(Ljava/lang/String;)Li20$d$e$a;

    goto :goto_a

    .line 51
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 52
    invoke-virtual {v3}, Li20$d$e$a;->a()Li20$d$e;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Li20$d$b;->k(Li20$d$e;)Li20$d$b;

    goto/16 :goto_3

    :pswitch_7
    const/4 v12, 0x5

    .line 54
    invoke-static {}, Lk20;->b()Lr20$a;

    move-result-object v3

    invoke-static {v0, v3}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$d$b;->f(Lj20;)Li20$d$b;

    goto/16 :goto_3

    :pswitch_8
    const/4 v12, 0x5

    .line 55
    invoke-static {}, Li20$d$c;->a()Li20$d$c$a;

    move-result-object v3

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 57
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    goto/16 :goto_e

    :sswitch_1d
    const-string v10, "modelClass"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    goto/16 :goto_e

    :cond_2b
    const/16 v9, 0x8

    goto/16 :goto_f

    :sswitch_1e
    const-string v10, "state"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    goto :goto_e

    :cond_2c
    const/4 v9, 0x7

    goto :goto_f

    :sswitch_1f
    const-string v10, "model"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_e

    :cond_2d
    const/4 v9, 0x6

    goto :goto_f

    :sswitch_20
    const-string v10, "cores"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto :goto_e

    :cond_2e
    const/4 v9, 0x5

    goto :goto_f

    :sswitch_21
    const-string v10, "diskSpace"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto :goto_e

    :cond_2f
    const/4 v9, 0x4

    goto :goto_f

    :sswitch_22
    const-string v10, "arch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto :goto_e

    :cond_30
    const/4 v9, 0x3

    goto :goto_f

    :sswitch_23
    const-string v10, "ram"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto :goto_e

    :cond_31
    const/4 v9, 0x2

    goto :goto_f

    :sswitch_24
    const-string v10, "manufacturer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto :goto_e

    :cond_32
    const/4 v9, 0x1

    goto :goto_f

    :sswitch_25
    const-string v10, "simulator"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_e

    :cond_33
    const/4 v9, 0x0

    goto :goto_f

    :goto_e
    const/4 v9, -0x1

    :goto_f
    packed-switch v9, :pswitch_data_2

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_d

    .line 61
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->g(Ljava/lang/String;)Li20$d$c$a;

    goto/16 :goto_d

    .line 62
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->j(I)Li20$d$c$a;

    goto/16 :goto_d

    .line 63
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->f(Ljava/lang/String;)Li20$d$c$a;

    goto/16 :goto_d

    .line 64
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->c(I)Li20$d$c$a;

    goto/16 :goto_d

    .line 65
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Li20$d$c$a;->d(J)Li20$d$c$a;

    goto/16 :goto_d

    .line 66
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->b(I)Li20$d$c$a;

    goto/16 :goto_d

    .line 67
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Li20$d$c$a;->h(J)Li20$d$c$a;

    goto/16 :goto_d

    .line 68
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->e(Ljava/lang/String;)Li20$d$c$a;

    goto/16 :goto_d

    .line 69
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v9

    invoke-virtual {v3, v9}, Li20$d$c$a;->i(Z)Li20$d$c$a;

    goto/16 :goto_d

    .line 70
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 71
    invoke-virtual {v3}, Li20$d$c$a;->a()Li20$d$c;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Li20$d$b;->d(Li20$d$c;)Li20$d$b;

    goto/16 :goto_3

    :pswitch_12
    const/4 v12, 0x5

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$d$b;->e(Ljava/lang/Long;)Li20$d$b;

    goto/16 :goto_3

    :pswitch_13
    const/4 v12, 0x5

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Li20$d$b;->j([B)Li20$d$b;

    goto/16 :goto_3

    :pswitch_14
    const/4 v12, 0x5

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Li20$d$b;->l(J)Li20$d$b;

    goto/16 :goto_3

    .line 77
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 78
    invoke-virtual {v2}, Li20$d$b;->a()Li20$d;

    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Li20$a;->i(Li20$d;)Li20$a;

    goto/16 :goto_0

    .line 80
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$a;->c(Ljava/lang/String;)Li20$a;

    goto/16 :goto_0

    .line 81
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Li20$a;->g(I)Li20$a;

    goto/16 :goto_0

    .line 82
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$a;->e(Ljava/lang/String;)Li20$a;

    goto/16 :goto_0

    .line 83
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$a;->d(Ljava/lang/String;)Li20$a;

    goto/16 :goto_0

    .line 84
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$a;->b(Ljava/lang/String;)Li20$a;

    goto/16 :goto_0

    .line 85
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li20$a;->h(Ljava/lang/String;)Li20$a;

    goto/16 :goto_0

    .line 86
    :pswitch_1b
    invoke-static {}, Li20$c;->a()Li20$c$a;

    move-result-object v2

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 88
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "files"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, "orgId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_10

    .line 92
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$c$a;->c(Ljava/lang/String;)Li20$c$a;

    goto :goto_10

    .line 93
    :cond_37
    invoke-static {}, Ll20;->b()Lr20$a;

    move-result-object v3

    invoke-static {v0, v3}, Lr20;->g(Landroid/util/JsonReader;Lr20$a;)Lj20;

    move-result-object v3

    invoke-virtual {v2, v3}, Li20$c$a;->b(Lj20;)Li20$c$a;

    goto :goto_10

    .line 94
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 95
    invoke-virtual {v2}, Li20$c$a;->a()Li20$c;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Li20$a;->f(Li20$c;)Li20$a;

    goto/16 :goto_0

    .line 97
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    .line 98
    invoke-virtual {v1}, Li20$a;->a()Li20;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e43cda7 -> :sswitch_7
        -0x74fb5cc2 -> :sswitch_6
        -0x36578976 -> :sswitch_5
        0x14879cf2 -> :sswitch_4
        0x2ae81915 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x75c19db6 -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ee2d36c -> :sswitch_12
        -0x60775357 -> :sswitch_11
        -0x5fc4f373 -> :sswitch_10
        -0x4f94e1aa -> :sswitch_f
        -0x4cf81ee7 -> :sswitch_e
        0xde4 -> :sswitch_d
        0x17a21 -> :sswitch_c
        0x36ebcb -> :sswitch_b
        0x111a9ad3 -> :sswitch_a
        0x3d1e2286 -> :sswitch_9
        0x7a02fcad -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x60775357 -> :sswitch_18
        -0x1ef60132 -> :sswitch_17
        0xcbc122a -> :sswitch_16
        0x14f51cd8 -> :sswitch_15
        0x2ae81915 -> :sswitch_14
        0x75c19db6 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x36578976 -> :sswitch_1c
        -0x11773b11 -> :sswitch_1b
        0x14f51cd8 -> :sswitch_1a
        0x6fbd6873 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x7618bbfc -> :sswitch_25
        -0x7561dc2f -> :sswitch_24
        0x1b81e -> :sswitch_23
        0x2dd056 -> :sswitch_22
        0x4dfed69 -> :sswitch_21
        0x5a744b4 -> :sswitch_20
        0x633fb29 -> :sswitch_1f
        0x68ac491 -> :sswitch_1e
        0x7bea4fcf -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public e(Ljava/lang/String;)Li20$d$d;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {v0}, Lr20;->h(Landroid/util/JsonReader;)Li20$d$d;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f(Li20$d$d;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr20;->a:Ld40;

    invoke-interface {v0, p1}, Ld40;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Li20;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {v0}, Lr20;->k(Landroid/util/JsonReader;)Li20;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public m(Li20;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr20;->a:Ld40;

    invoke-interface {v0, p1}, Ld40;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
