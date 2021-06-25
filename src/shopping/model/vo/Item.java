package shopping.model.vo;

import java.util.List;

public class Item {
	private String itemCode;
	private String itemName;
	private String itemPrice;
	private String itemDesc;
	private String itemIfm;
	private String itemCategory;
	private String itemDetail2;
	private String itemSize;
	private String itemUrl;
	private String itemLogo;
	private String itemStock;
	private ItemImage thumbnail;
	private List<ItemImage> images;

	public String getItemCode() {
		return itemCode;
	}

	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}

	public String getItemDesc() {
		return itemDesc;
	}

	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}

	public String getItemIfm() {
		return itemIfm;
	}

	public void setItemIfm(String itemIfm) {
		this.itemIfm = itemIfm;
	}

	public String getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}

	public String getItemDetail2() {
		return itemDetail2;
	}

	public void setItemDetail2(String itemDetail2) {
		this.itemDetail2 = itemDetail2;
	}

	public String getItemSize() {
		return itemSize;
	}

	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}

	public String getItemUrl() {
		return itemUrl;
	}

	public void setItemUrl(String itemUrl) {
		this.itemUrl = itemUrl;
	}

	public String getItemLogo() {
		return itemLogo;
	}

	public void setItemLogo(String itemLogo) {
		this.itemLogo = itemLogo;
	}

	public String getItemStock() {
		return itemStock;
	}

	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}

	public ItemImage getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(ItemImage thumbnail) {
		this.thumbnail = thumbnail;
	}

	public List<ItemImage> getImages() {
		return images;
	}

	public void setImages(List<ItemImage> images) {
		this.images = images;
	}

	@Override
	public String toString() {
		return "Item [itemCode=" + itemCode + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemDesc="
				+ itemDesc + ", itemIfm=" + itemIfm + ", itemCategory=" + itemCategory + ", itemDetail2=" + itemDetail2
				+ ", itemSize=" + itemSize + ", itemUrl=" + itemUrl + ", itemLogo=" + itemLogo + ", itemStock="
				+ itemStock + "]";
	}

}
