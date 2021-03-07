# アプリケーション概要


# URL


# テスト用アカウント


# 利用方法


# 目指した課題解決


# 洗い出した要件


# 実装した機能についてのGIFと説明


# 実装予定の機能


# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nick_name          | string | null: false               |

### Association

- has_many :posts
- has_many :comments

## posts テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| title   | string     | null: false |
| text    | text       | null: false |
| area_id | integer    | null: false |
| score   | integer    | null: false |
| user    | references |             |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| text    | text       | null: false |
| user    | references |             |
| post    | references |             |

### Association

- belongs_to :user
- belongs_to :post

%3CmxGraphModel%3E%3Croot%3E%3CmxCell%20id%3D%220%22%2F%3E%3CmxCell%20id%3D%221%22%20parent%3D%220%22%2F%3E%3CmxCell%20id%3D%222%22%20style%3D%22edgeStyle%3DorthogonalEdgeStyle%3Brounded%3D0%3BorthogonalLoop%3D1%3BjettySize%3Dauto%3Bhtml%3D1%3BentryX%3D-0.008%3BentryY%3D0.922%3BentryDx%3D0%3BentryDy%3D0%3BentryPerimeter%3D0%3BstartArrow%3DERone%3BstartFill%3D0%3BstartSize%3D16%3BendArrow%3DERmany%3BendFill%3D0%3BendSize%3D16%3B%22%20edge%3D%221%22%20source%3D%223%22%20target%3D%2216%22%20parent%3D%221%22%3E%3CmxGeometry%20relative%3D%221%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%223%22%20value%3D%22users%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%2252%22%20y%3D%22190%22%20width%3D%22258%22%20height%3D%22120%22%20as%3D%22geometry%22%3E%3CmxRectangle%20x%3D%22110%22%20y%3D%22240%22%20width%3D%22120%22%20height%3D%2226%22%20as%3D%22alternateBounds%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%224%22%20value%3D%22email%EF%BC%88string%E5%9E%8B%E3%80%81NOT%20NULL%E3%80%81%E4%B8%80%E6%84%8F%E6%80%A7%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%223%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22258%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%225%22%20value%3D%22encrypted_password%EF%BC%88string%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%223%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22258%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%226%22%20value%3D%22name%EF%BC%88string%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%223%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22258%22%20height%3D%2234%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%227%22%20style%3D%22edgeStyle%3DorthogonalEdgeStyle%3Brounded%3D0%3BorthogonalLoop%3D1%3BjettySize%3Dauto%3Bhtml%3D1%3BentryX%3D1.01%3BentryY%3D0.311%3BentryDx%3D0%3BentryDy%3D0%3BentryPerimeter%3D0%3BstartArrow%3DERone%3BstartFill%3D0%3BstartSize%3D16%3BendArrow%3DERmany%3BendFill%3D0%3BendSize%3D16%3B%22%20edge%3D%221%22%20source%3D%228%22%20target%3D%2217%22%20parent%3D%221%22%3E%3CmxGeometry%20relative%3D%221%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%228%22%20value%3D%22posts%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22425%22%20y%3D%22190%22%20width%3D%22288%22%20height%3D%22206%22%20as%3D%22geometry%22%3E%3CmxRectangle%20x%3D%22110%22%20y%3D%22240%22%20width%3D%22120%22%20height%3D%2226%22%20as%3D%22alternateBounds%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%229%22%20value%3D%22image%EF%BC%88ActiveStorage%E3%81%A7%E5%AE%9F%E8%A3%85%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2210%22%20value%3D%22title%EF%BC%88string%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2211%22%20value%3D%22text%EF%BC%88text%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2212%22%20value%3D%22area_id%EF%BC%88integer%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%22116%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2213%22%20value%3D%22score%EF%BC%88integer%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%22146%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2214%22%20value%3D%22user%EF%BC%88references%E5%9E%8B%E3%80%81%E5%A4%96%E9%83%A8%E3%82%AD%E3%83%BC%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%228%22%3E%3CmxGeometry%20y%3D%22176%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2215%22%20value%3D%22comments%E3%83%86%E3%83%BC%E3%83%96%E3%83%AB%22%20style%3D%22swimlane%3BfontStyle%3D0%3BchildLayout%3DstackLayout%3Bhorizontal%3D1%3BstartSize%3D26%3BhorizontalStack%3D0%3BresizeParent%3D1%3BresizeParentMax%3D0%3BresizeLast%3D0%3Bcollapsible%3D1%3BmarginBottom%3D0%3Balign%3Dcenter%3BfontSize%3D14%3B%22%20vertex%3D%221%22%20parent%3D%221%22%3E%3CmxGeometry%20x%3D%22230%22%20y%3D%22470%22%20width%3D%22288%22%20height%3D%22116%22%20as%3D%22geometry%22%3E%3CmxRectangle%20x%3D%22110%22%20y%3D%22240%22%20width%3D%22120%22%20height%3D%2226%22%20as%3D%22alternateBounds%22%2F%3E%3C%2FmxGeometry%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2216%22%20value%3D%22text%EF%BC%88text%E5%9E%8B%E3%80%81NOT%20NULL%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2215%22%3E%3CmxGeometry%20y%3D%2226%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2217%22%20value%3D%22user%EF%BC%88references%E5%9E%8B%E3%80%81%E5%A4%96%E9%83%A8%E3%82%AD%E3%83%BC%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2215%22%3E%3CmxGeometry%20y%3D%2256%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2218%22%20value%3D%22post%EF%BC%88references%E5%9E%8B%E3%80%81%E5%A4%96%E9%83%A8%E3%82%AD%E3%83%BC%EF%BC%89%22%20style%3D%22text%3BstrokeColor%3Dnone%3BfillColor%3Dnone%3BspacingLeft%3D4%3BspacingRight%3D4%3Boverflow%3Dhidden%3Brotatable%3D0%3Bpoints%3D%5B%5B0%2C0.5%5D%2C%5B1%2C0.5%5D%5D%3BportConstraint%3Deastwest%3BfontSize%3D12%3B%22%20vertex%3D%221%22%20parent%3D%2215%22%3E%3CmxGeometry%20y%3D%2286%22%20width%3D%22288%22%20height%3D%2230%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3CmxCell%20id%3D%2219%22%20style%3D%22edgeStyle%3DorthogonalEdgeStyle%3Brounded%3D0%3BorthogonalLoop%3D1%3BjettySize%3Dauto%3Bhtml%3D1%3BexitX%3D1%3BexitY%3D0.5%3BexitDx%3D0%3BexitDy%3D0%3BentryX%3D0%3BentryY%3D0.5%3BentryDx%3D0%3BentryDy%3D0%3BendSize%3D16%3BstartSize%3D16%3BendArrow%3DERmany%3BendFill%3D0%3BstartArrow%3DERone%3BstartFill%3D0%3B%22%20edge%3D%221%22%20source%3D%224%22%20target%3D%229%22%20parent%3D%221%22%3E%3CmxGeometry%20relative%3D%221%22%20as%3D%22geometry%22%2F%3E%3C%2FmxCell%3E%3C%2Froot%3E%3C%2FmxGraphModel%3E


# ローカルでの動作方法